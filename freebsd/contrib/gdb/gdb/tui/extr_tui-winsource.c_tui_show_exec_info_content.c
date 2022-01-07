
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct tui_gen_win_info* execution_info; } ;
struct TYPE_6__ {TYPE_2__ source_info; } ;
struct tui_win_info {TYPE_3__ detail; } ;
struct TYPE_4__ {int simple_string; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
struct tui_gen_win_info {int content_size; int content_in_use; scalar_t__* content; int handle; } ;


 int TRUE ;
 int mvwaddstr (int ,int,int ,int ) ;
 int tui_refresh_win (struct tui_gen_win_info*) ;
 int werase (int ) ;

void
tui_show_exec_info_content (struct tui_win_info * win_info)
{
  struct tui_gen_win_info * exec_info = win_info->detail.source_info.execution_info;
  int cur_line;

  werase (exec_info->handle);
  tui_refresh_win (exec_info);
  for (cur_line = 1; (cur_line <= exec_info->content_size); cur_line++)
    mvwaddstr (exec_info->handle,
        cur_line,
        0,
        ((struct tui_win_element *)
  exec_info->content[cur_line - 1])->which_element.simple_string);
  tui_refresh_win (exec_info);
  exec_info->content_in_use = TRUE;
}
