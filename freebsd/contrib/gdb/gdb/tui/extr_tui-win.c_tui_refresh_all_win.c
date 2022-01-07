
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;
struct TYPE_8__ {scalar_t__ is_visible; } ;
struct TYPE_9__ {TYPE_1__ generic; } ;




 int MAX_MAJOR_WINDOWS ;

 int TRUE ;
 int clearok (int ,int ) ;
 int curscr ;
 int tui_check_and_display_highlight_if_needed (TYPE_2__*) ;
 int tui_erase_exec_info_content (TYPE_2__*) ;
 int tui_refresh_all (TYPE_2__**) ;
 int tui_refresh_data_win () ;
 int tui_show_locator_content () ;
 int tui_show_source_content (TYPE_2__*) ;
 int tui_update_exec_info (TYPE_2__*) ;
 TYPE_2__** tui_win_list ;

void
tui_refresh_all_win (void)
{
  enum tui_win_type type;

  clearok (curscr, TRUE);
  tui_refresh_all (tui_win_list);
  for (type = 128; type < MAX_MAJOR_WINDOWS; type++)
    {
      if (tui_win_list[type] && tui_win_list[type]->generic.is_visible)
 {
   switch (type)
     {
     case 128:
     case 129:
       tui_show_source_content (tui_win_list[type]);
       tui_check_and_display_highlight_if_needed (tui_win_list[type]);
       tui_erase_exec_info_content (tui_win_list[type]);
       tui_update_exec_info (tui_win_list[type]);
       break;
     case 130:
       tui_refresh_data_win ();
       break;
     default:
       break;
     }
 }
    }
  tui_show_locator_content ();
}
