
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char * ctrl_dir_state_txt(int s)
{
 switch (s) {
 case 129: return "FORCE_BOTH";
 case 128: return "IN_OR_BOTH";
 default: return "Unknown";
 }
}
