
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int locator; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
struct tui_gen_win_info {int content_in_use; int * handle; scalar_t__* content; } ;
typedef int WINDOW ;


 int TRUE ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 char* tui_make_status_line (int *) ;
 int tui_refresh_win (struct tui_gen_win_info*) ;
 int waddstr (int *,char*) ;
 int wclrtoeol (int *) ;
 int wmove (int *,int ,int ) ;
 int wstandend (int *) ;
 int wstandout (int *) ;
 int xfree (char*) ;

void
tui_show_locator_content (void)
{
  char *string;
  struct tui_gen_win_info * locator;

  locator = tui_locator_win_info_ptr ();

  if (locator != ((void*)0) && locator->handle != (WINDOW *) ((void*)0))
    {
      struct tui_win_element * element;

      element = (struct tui_win_element *) locator->content[0];

      string = tui_make_status_line (&element->which_element.locator);
      wmove (locator->handle, 0, 0);
      wstandout (locator->handle);
      waddstr (locator->handle, string);
      wclrtoeol (locator->handle);
      wstandend (locator->handle);
      tui_refresh_win (locator);
      wmove (locator->handle, 0, 0);
      xfree (string);
      locator->content_in_use = TRUE;
    }
}
