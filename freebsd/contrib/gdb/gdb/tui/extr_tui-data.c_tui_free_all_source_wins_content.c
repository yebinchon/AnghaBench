
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * execution_info; } ;
struct TYPE_5__ {TYPE_1__ source_info; } ;
struct tui_win_info {TYPE_2__ detail; int generic; } ;
struct TYPE_6__ {int count; scalar_t__* list; } ;


 int tui_free_win_content (int *) ;
 TYPE_3__* tui_source_windows () ;

void
tui_free_all_source_wins_content (void)
{
  int i;

  for (i = 0; i < (tui_source_windows ())->count; i++)
    {
      struct tui_win_info * win_info = (struct tui_win_info *) (tui_source_windows ())->list[i];

      if (win_info != ((void*)0))
 {
   tui_free_win_content (&(win_info->generic));
   tui_free_win_content (win_info->detail.source_info.execution_info);
 }
    }
}
