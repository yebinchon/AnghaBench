
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char * reauth_timer_state_txt(int s)
{
 switch (s) {
 case 129: return "INITIALIZE";
 case 128: return "REAUTHENTICATE";
 default: return "Unknown";
 }
}
