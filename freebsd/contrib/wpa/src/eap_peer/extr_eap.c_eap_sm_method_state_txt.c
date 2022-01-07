
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EapMethodState ;
__attribute__((used)) static const char * eap_sm_method_state_txt(EapMethodState state)
{
 switch (state) {
 case 128:
  return "NONE";
 case 130:
  return "INIT";
 case 132:
  return "CONT";
 case 129:
  return "MAY_CONT";
 case 131:
  return "DONE";
 default:
  return "UNKNOWN";
 }
}
