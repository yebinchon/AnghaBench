
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 int frame_get_saved_regs (struct frame_info*,int *) ;

void
rs6000_frame_init_saved_regs (struct frame_info *fi)
{
  frame_get_saved_regs (fi, ((void*)0));
}
