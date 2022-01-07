
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int POP_FRAME_PTR ;
 int gdb_stack ;

restore_gdb (void)
{
  CORE_ADDR new_fp = gdb_stack;

  POP_FRAME_PTR;

}
