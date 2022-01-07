
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_peap_state_txt(int state)
{
 switch (state) {
 case 130:
  return "START";
 case 137:
  return "PHASE1";
 case 136:
  return "PHASE1_ID2";
 case 132:
  return "PHASE2_START";
 case 135:
  return "PHASE2_ID";
 case 134:
  return "PHASE2_METHOD";
 case 133:
  return "PHASE2_SOH";
 case 131:
  return "PHASE2_TLV";
 case 128:
  return "SUCCESS_REQ";
 case 138:
  return "FAILURE_REQ";
 case 129:
  return "SUCCESS";
 case 139:
  return "FAILURE";
 default:
  return "Unknown?!";
 }
}
