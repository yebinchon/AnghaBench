
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_sim_state_txt(int state)
{
 switch (state) {
 case 129:
  return "START";
 case 133:
  return "CHALLENGE";
 case 130:
  return "REAUTH";
 case 128:
  return "SUCCESS";
 case 132:
  return "FAILURE";
 case 131:
  return "NOTIFICATION";
 default:
  return "Unknown?!";
 }
}
