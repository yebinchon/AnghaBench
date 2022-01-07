
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ content_size; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;


 int TRUE ;
 TYPE_2__* TUI_DATA_WIN ;
 int tui_display_data_from (int,int ) ;
 int tui_erase_data_content (char*) ;
 int tui_first_data_item_displayed () ;

void
tui_refresh_data_win (void)
{
  tui_erase_data_content ((char *) ((void*)0));
  if (TUI_DATA_WIN->generic.content_size > 0)
    {
      int first_element = tui_first_data_item_displayed ();

      if (first_element >= 0)
 tui_display_data_from (first_element, TRUE);
    }
}
