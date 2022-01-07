
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;
typedef enum tui_scroll_direction { ____Placeholder_tui_scroll_direction } tui_scroll_direction ;






 int tui_scroll_backward (struct tui_win_info*,int) ;
 int tui_scroll_forward (struct tui_win_info*,int) ;
 int tui_scroll_left (struct tui_win_info*,int) ;
 int tui_scroll_right (struct tui_win_info*,int) ;

void
tui_scroll (enum tui_scroll_direction direction,
     struct tui_win_info * win_to_scroll,
     int num_to_scroll)
{
  switch (direction)
    {
    case 130:
      tui_scroll_forward (win_to_scroll, num_to_scroll);
      break;
    case 131:
      tui_scroll_backward (win_to_scroll, num_to_scroll);
      break;
    case 129:
      tui_scroll_left (win_to_scroll, num_to_scroll);
      break;
    case 128:
      tui_scroll_right (win_to_scroll, num_to_scroll);
      break;
    default:
      break;
    }
}
