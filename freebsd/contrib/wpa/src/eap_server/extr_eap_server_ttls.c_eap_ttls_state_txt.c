
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_ttls_state_txt(int state)
{
 switch (state) {
 case 129:
  return "START";
 case 133:
  return "PHASE1";
 case 130:
  return "PHASE2_START";
 case 132:
  return "PHASE2_METHOD";
 case 131:
  return "PHASE2_MSCHAPV2_RESP";
 case 128:
  return "SUCCESS";
 case 134:
  return "FAILURE";
 default:
  return "Unknown?!";
 }
}
