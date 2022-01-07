
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * p2p_state_txt(int state)
{
 switch (state) {
 case 137:
  return "IDLE";
 case 130:
  return "SEARCH";
 case 140:
  return "CONNECT";
 case 139:
  return "CONNECT_LISTEN";
 case 138:
  return "GO_NEG";
 case 134:
  return "LISTEN_ONLY";
 case 129:
  return "WAIT_PEER_CONNECT";
 case 128:
  return "WAIT_PEER_IDLE";
 case 131:
  return "SD_DURING_FIND";
 case 132:
  return "PROVISIONING";
 case 133:
  return "PD_DURING_FIND";
 case 136:
  return "INVITE";
 case 135:
  return "INVITE_LISTEN";
 default:
  return "?";
 }
}
