#!
cd test/expo/features/fixtures/test-app
npm i turtle-cli
perl -0777 -i.original -pe "s/entitlements\\['aps-environment'\\] =[^;]+;//gs" node_modules/turtle-cli/node_modules/xdl/build/detach/IosNSBundle.js
mkdir build
ls
node_modules/.bin/turtle build:ios --team-id $APPLE_TEAM_ID --dist-p12-path $$EXPO_P12_PATH --provisioning-profile-path $$EXPO_PROVISIONING_PROFILE_PATH -o build/output.ipa
