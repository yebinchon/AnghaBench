
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 int frame_relative_level (struct frame_info*) ;
 int print_stack_frame (struct frame_info*,int ,int) ;
 int select_frame (struct frame_info*) ;

__attribute__((used)) static void
select_and_print_frame (struct frame_info *fi)
{
  select_frame (fi);
  if (fi)
    {
      print_stack_frame (fi, frame_relative_level (fi), 1);
    }
}
