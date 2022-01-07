
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;
struct tui_list {int count; scalar_t__* list; } ;


 int FALSE ;
 struct tui_list* tui_source_windows () ;
 scalar_t__ tui_update_breakpoint_info (struct tui_win_info*,int ) ;
 int tui_update_exec_info (struct tui_win_info*) ;

void
tui_update_all_breakpoint_info (void)
{
  struct tui_list *list = tui_source_windows ();
  int i;

  for (i = 0; i < list->count; i++)
    {
      struct tui_win_info * win = (struct tui_win_info *) list->list[i];

      if (tui_update_breakpoint_info (win, FALSE))
        {
          tui_update_exec_info (win);
        }
    }
}
