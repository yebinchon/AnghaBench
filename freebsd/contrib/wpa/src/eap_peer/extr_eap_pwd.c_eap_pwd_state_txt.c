
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_pwd_state_txt(int state)
{
 switch (state) {
        case 130:
  return "PWD-ID-Req";
        case 132:
  return "PWD-Commit-Req";
        case 131:
  return "PWD-Confirm-Req";
 case 128:
  return "SUCCESS_ON_FRAG_COMPLETION";
        case 129:
  return "SUCCESS";
        case 133:
  return "FAILURE";
        default:
  return "PWD-UNK";
 }
}
