
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int gdb_stack ;

save_frame_pointer (CORE_ADDR val)
{
  gdb_stack = val;
}
