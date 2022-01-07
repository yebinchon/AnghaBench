
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ deprecated_selected_frame ;
 int error (char*) ;
 int frame_relative_level (scalar_t__) ;
 int print_stack_frame (scalar_t__,int ,int) ;
 scalar_t__ target_has_stack ;

__attribute__((used)) static void
current_frame_command (char *level_exp, int from_tty)
{
  if (target_has_stack == 0 || deprecated_selected_frame == 0)
    error ("No stack.");
  print_stack_frame (deprecated_selected_frame,
     frame_relative_level (deprecated_selected_frame), 1);
}
