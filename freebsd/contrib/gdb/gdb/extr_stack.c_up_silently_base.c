
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 scalar_t__ deprecated_selected_frame ;
 int error (char*) ;
 struct frame_info* find_relative_frame (scalar_t__,int*) ;
 int frame_relative_level (scalar_t__) ;
 int parse_and_eval_long (char*) ;
 int select_frame (struct frame_info*) ;
 int selected_frame_level_changed_event (int ) ;
 scalar_t__ target_has_stack ;

__attribute__((used)) static void
up_silently_base (char *count_exp)
{
  struct frame_info *fi;
  int count = 1, count1;
  if (count_exp)
    count = parse_and_eval_long (count_exp);
  count1 = count;

  if (target_has_stack == 0 || deprecated_selected_frame == 0)
    error ("No stack.");

  fi = find_relative_frame (deprecated_selected_frame, &count1);
  if (count1 != 0 && count_exp == 0)
    error ("Initial frame selected; you cannot go up.");
  select_frame (fi);
  selected_frame_level_changed_event (frame_relative_level (deprecated_selected_frame));
}
