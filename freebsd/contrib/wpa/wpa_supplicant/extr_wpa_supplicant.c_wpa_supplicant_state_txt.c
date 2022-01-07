
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;
const char * wpa_supplicant_state_txt(enum wpa_states state)
{
 switch (state) {
 case 132:
  return "DISCONNECTED";
 case 130:
  return "INACTIVE";
 case 129:
  return "INTERFACE_DISABLED";
 case 128:
  return "SCANNING";
 case 134:
  return "AUTHENTICATING";
 case 135:
  return "ASSOCIATING";
 case 136:
  return "ASSOCIATED";
 case 137:
  return "4WAY_HANDSHAKE";
 case 131:
  return "GROUP_HANDSHAKE";
 case 133:
  return "COMPLETED";
 default:
  return "UNKNOWN";
 }
}
