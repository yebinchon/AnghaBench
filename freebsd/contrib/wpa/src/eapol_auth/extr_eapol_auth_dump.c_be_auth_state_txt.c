
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char * be_auth_state_txt(int s)
{
 switch (s) {
 case 131: return "REQUEST";
 case 130: return "RESPONSE";
 case 129: return "SUCCESS";
 case 135: return "FAIL";
 case 128: return "TIMEOUT";
 case 134: return "IDLE";
 case 132: return "INITIALIZE";
 case 133: return "IGNORE";
 default: return "Unknown";
 }
}
