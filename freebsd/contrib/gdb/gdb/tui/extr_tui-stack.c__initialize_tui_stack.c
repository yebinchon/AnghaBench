
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int class_tui ;
 int tui_update_command ;

void
_initialize_tui_stack (void)
{
  add_com ("update", class_tui, tui_update_command,
           "Update the source window and locator to display the current "
           "execution point.\n");
}
