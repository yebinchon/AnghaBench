
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char * key_rx_state_txt(int s)
{
 switch (s) {
 case 128: return "NO_KEY_RECEIVE";
 case 129: return "KEY_RECEIVE";
 default: return "Unknown";
 }
}
