
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int content_size; scalar_t__* content; } ;
struct tui_win_info {TYPE_2__ generic; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ line_or_addr; } ;
struct TYPE_5__ {TYPE_4__ source; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
typedef scalar_t__ CORE_ADDR ;


 int FALSE ;
 int SCROLL_THRESHOLD ;

int
tui_addr_is_displayed (CORE_ADDR addr, struct tui_win_info * win_info,
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
        win_info->generic.content[i])->which_element.source.line_or_addr.addr
       == addr);
      i++;
    }

  return is_displayed;
}
