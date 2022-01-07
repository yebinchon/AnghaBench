
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tui_win_content ;
struct TYPE_7__ {scalar_t__ data_content; scalar_t__ data_content_count; } ;
struct TYPE_8__ {TYPE_2__ data_display_info; } ;
struct TYPE_6__ {scalar_t__ content_size; } ;
struct TYPE_9__ {TYPE_3__ detail; TYPE_1__ generic; } ;


 char* NO_DATA_STRING ;
 TYPE_4__* TUI_DATA_WIN ;
 int tui_check_and_display_highlight_if_needed (TYPE_4__*) ;
 int tui_delete_data_content_windows () ;
 int tui_display_registers_from (int ) ;
 int tui_erase_data_content (char*) ;

void
tui_display_all_data (void)
{
  if (TUI_DATA_WIN->generic.content_size <= 0)
    tui_erase_data_content (NO_DATA_STRING);
  else
    {
      tui_erase_data_content ((char *) ((void*)0));
      tui_delete_data_content_windows ();
      tui_check_and_display_highlight_if_needed (TUI_DATA_WIN);
      tui_display_registers_from (0);



      if (TUI_DATA_WIN->detail.data_display_info.data_content !=
   (tui_win_content) ((void*)0) &&
   TUI_DATA_WIN->detail.data_display_info.data_content_count > 0)
 {
 }
    }
}
