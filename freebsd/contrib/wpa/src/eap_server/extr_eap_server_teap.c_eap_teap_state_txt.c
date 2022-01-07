
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_teap_state_txt(int state)
{
 switch (state) {
 case 129:
  return "START";
 case 136:
  return "PHASE1";
 case 135:
  return "PHASE1B";
 case 131:
  return "PHASE2_START";
 case 133:
  return "PHASE2_ID";
 case 134:
  return "PHASE2_BASIC_AUTH";
 case 132:
  return "PHASE2_METHOD";
 case 139:
  return "CRYPTO_BINDING";
 case 130:
  return "REQUEST_PAC";
 case 137:
  return "FAILURE_SEND_RESULT";
 case 128:
  return "SUCCESS";
 case 138:
  return "FAILURE";
 default:
  return "Unknown?!";
 }
}
