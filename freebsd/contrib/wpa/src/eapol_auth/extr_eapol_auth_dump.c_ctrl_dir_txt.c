
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ControlledDirection ;





__attribute__((used)) static inline const char * ctrl_dir_txt(ControlledDirection dir)
{
 switch (dir) {
 case 129: return "Both";
 case 128: return "In";
 default: return "Unknown";
 }
}
