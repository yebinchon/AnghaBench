
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_prefix_cmd (char*,int ,int ,char*,scalar_t__*,char*,int ,int *) ;
 int class_tui ;
 int cmdlist ;
 int tui_command ;
 scalar_t__ tuilist ;

struct cmd_list_element **
tui_get_cmd_list ()
{
  if (tuilist == 0)
    add_prefix_cmd ("tui", class_tui, tui_command,
                    "Text User Interface commands.",
                    &tuilist, "tui ", 0, &cmdlist);
  return &tuilist;
}
