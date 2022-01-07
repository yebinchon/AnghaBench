
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_aka_state_txt(int state)
{
 switch (state) {
 case 131:
  return "CONTINUE";
 case 129:
  return "RESULT_SUCCESS";
 case 128:
  return "SUCCESS";
 case 130:
  return "FAILURE";
 default:
  return "?";
 }
}
