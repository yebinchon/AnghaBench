
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_set_locator_filename (char const*) ;
 int tui_show_locator_content () ;

void
tui_update_locator_filename (const char *filename)
{
  tui_set_locator_filename (filename);
  tui_show_locator_content ();
}
