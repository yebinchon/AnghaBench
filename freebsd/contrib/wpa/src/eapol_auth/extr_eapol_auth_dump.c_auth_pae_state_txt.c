
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char * auth_pae_state_txt(int s)
{
 switch (s) {
 case 129: return "INITIALIZE";
 case 133: return "DISCONNECTED";
 case 134: return "CONNECTING";
 case 135: return "AUTHENTICATING";
 case 136: return "AUTHENTICATED";
 case 137: return "ABORTING";
 case 130: return "HELD";
 case 132: return "FORCE_AUTH";
 case 131: return "FORCE_UNAUTH";
 case 128: return "RESTART";
 default: return "Unknown";
 }
}
