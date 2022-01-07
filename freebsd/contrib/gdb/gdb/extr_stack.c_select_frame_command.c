
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 int deprecated_selected_frame ;
 int error (char*) ;
 int frame_relative_level (int ) ;
 struct frame_info* parse_frame_specification (char*) ;
 int select_frame (struct frame_info*) ;
 int selected_frame_level_changed_event (int) ;
 int target_has_stack ;

void
select_frame_command (char *level_exp, int from_tty)
{
  struct frame_info *frame;
  int level = frame_relative_level (deprecated_selected_frame);

  if (!target_has_stack)
    error ("No stack.");

  frame = parse_frame_specification (level_exp);

  select_frame (frame);
  if (level != frame_relative_level (deprecated_selected_frame))
    selected_frame_level_changed_event (frame_relative_level (deprecated_selected_frame));
}
