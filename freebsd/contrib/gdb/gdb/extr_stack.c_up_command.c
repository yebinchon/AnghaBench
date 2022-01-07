
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deprecated_selected_frame ;
 int frame_relative_level (int ) ;
 int print_stack_frame (int ,int ,int) ;
 int up_silently_base (char*) ;

__attribute__((used)) static void
up_command (char *count_exp, int from_tty)
{
  up_silently_base (count_exp);
  print_stack_frame (deprecated_selected_frame,
       frame_relative_level (deprecated_selected_frame), 1);
}
