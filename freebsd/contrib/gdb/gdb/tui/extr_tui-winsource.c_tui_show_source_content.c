
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ content_size; int content_in_use; } ;
struct tui_win_info {TYPE_1__ generic; } ;


 int TRUE ;
 int tui_check_and_display_highlight_if_needed (struct tui_win_info*) ;
 int tui_erase_source_content (struct tui_win_info*,int ) ;
 int tui_refresh_win (TYPE_1__*) ;
 int tui_show_source_line (struct tui_win_info*,int) ;

void
tui_show_source_content (struct tui_win_info * win_info)
{
  if (win_info->generic.content_size > 0)
    {
      int lineno;

      for (lineno = 1; lineno <= win_info->generic.content_size; lineno++)
        tui_show_source_line (win_info, lineno);
    }
  else
    tui_erase_source_content (win_info, TRUE);

  tui_check_and_display_highlight_if_needed (win_info);
  tui_refresh_win (&win_info->generic);
  win_info->generic.content_in_use = TRUE;
}
