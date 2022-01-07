
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_win_info {int dummy; } ;


 int tui_set_exec_info_content (struct tui_win_info*) ;
 int tui_show_exec_info_content (struct tui_win_info*) ;

void
tui_update_exec_info (struct tui_win_info * win_info)
{
  tui_set_exec_info_content (win_info);
  tui_show_exec_info_content (win_info);
}
