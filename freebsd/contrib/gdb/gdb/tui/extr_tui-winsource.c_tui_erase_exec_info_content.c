
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tui_gen_win_info* execution_info; } ;
struct TYPE_4__ {TYPE_1__ source_info; } ;
struct tui_win_info {TYPE_2__ detail; } ;
struct tui_gen_win_info {int handle; } ;


 int tui_refresh_win (struct tui_gen_win_info*) ;
 int werase (int ) ;

void
tui_erase_exec_info_content (struct tui_win_info * win_info)
{
  struct tui_gen_win_info * exec_info = win_info->detail.source_info.execution_info;

  werase (exec_info->handle);
  tui_refresh_win (exec_info);
}
