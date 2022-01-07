
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_gpsk_state_txt(int state)
{
 switch (state) {
 case 130:
  return "GPSK-1";
 case 129:
  return "GPSK-3";
 case 128:
  return "SUCCESS";
 case 131:
  return "FAILURE";
 default:
  return "?";
 }
}
