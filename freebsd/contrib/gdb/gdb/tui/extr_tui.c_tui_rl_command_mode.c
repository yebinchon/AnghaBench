
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TUI_ONE_COMMAND_MODE ;
 int rl_insert (int,int) ;
 int tui_set_key_mode (int ) ;

__attribute__((used)) static int
tui_rl_command_mode (int count, int key)
{
  tui_set_key_mode (TUI_ONE_COMMAND_MODE);
  return rl_insert (count, key);
}
