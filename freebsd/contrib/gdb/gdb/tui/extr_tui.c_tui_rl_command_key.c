
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; int cmd; } ;


 int TRUE ;
 char* alloca (scalar_t__) ;
 int execute_command (char*,int ) ;
 int reinitialize_more_filter () ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;
 TYPE_1__* tui_commands ;

__attribute__((used)) static int
tui_rl_command_key (int count, int key)
{
  int i;

  reinitialize_more_filter ();
  for (i = 0; tui_commands[i].cmd; i++)
    {
      if (tui_commands[i].key == key)
        {


          char* cmd = alloca (strlen (tui_commands[i].cmd) + 1);
          strcpy (cmd, tui_commands[i].cmd);
          execute_command (cmd, TRUE);
          return 0;
        }
    }
  return 0;
}
