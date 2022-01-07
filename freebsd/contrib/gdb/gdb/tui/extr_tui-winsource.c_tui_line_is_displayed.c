
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int content_size; scalar_t__* content; } ;
struct tui_win_info {TYPE_3__ generic; } ;
struct TYPE_8__ {int line_no; } ;
struct TYPE_5__ {TYPE_4__ line_or_addr; } ;
struct TYPE_6__ {TYPE_1__ source; } ;
struct tui_win_element {TYPE_2__ which_element; } ;


 int FALSE ;
 int SCROLL_THRESHOLD ;

int
tui_line_is_displayed (int line, struct tui_win_info * win_info,
         int check_threshold)
{
  int is_displayed = FALSE;
  int i, threshold;

  if (check_threshold)
    threshold = SCROLL_THRESHOLD;
  else
    threshold = 0;
  i = 0;
  while (i < win_info->generic.content_size - threshold && !is_displayed)
    {
      is_displayed = (((struct tui_win_element *)
        win_info->generic.content[i])->which_element.source.line_or_addr.line_no
       == (int) line);
      i++;
    }

  return is_displayed;
}
