
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deprecated_selected_frame ;
 int frame_relative_level (int ) ;
 int print_stack_frame (int ,int ,int) ;
 int select_frame_command (char*,int) ;

void
frame_command (char *level_exp, int from_tty)
{
  select_frame_command (level_exp, from_tty);
  print_stack_frame (deprecated_selected_frame,
       frame_relative_level (deprecated_selected_frame), 1);
}
