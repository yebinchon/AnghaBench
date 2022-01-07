
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char * auth_key_tx_state_txt(int s)
{
 switch (s) {
 case 128: return "NO_KEY_TRANSMIT";
 case 129: return "KEY_TRANSMIT";
 default: return "Unknown";
 }
}
