
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_fast_state_txt(int state)
{
 switch (state) {
 case 129:
  return "START";
 case 134:
  return "PHASE1";
 case 131:
  return "PHASE2_START";
 case 133:
  return "PHASE2_ID";
 case 132:
  return "PHASE2_METHOD";
 case 136:
  return "CRYPTO_BINDING";
 case 130:
  return "REQUEST_PAC";
 case 128:
  return "SUCCESS";
 case 135:
  return "FAILURE";
 default:
  return "Unknown?!";
 }
}
