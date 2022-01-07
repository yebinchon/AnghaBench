
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * eap_wsc_state_txt(int state)
{
 switch (state) {
 case 129:
  return "START";
 case 130:
  return "MESG";
 case 131:
  return "FRAG_ACK";
 case 128:
  return "WAIT_FRAG_ACK";
 case 133:
  return "DONE";
 case 132:
  return "FAIL";
 default:
  return "?";
 }
}
