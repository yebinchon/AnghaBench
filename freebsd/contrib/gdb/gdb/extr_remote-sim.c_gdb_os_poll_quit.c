
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int host_callback ;


 scalar_t__ immediate_quit ;
 scalar_t__ quit_flag ;
 int ui_loop_hook (int ) ;

__attribute__((used)) static int
gdb_os_poll_quit (host_callback *p)
{
  if (ui_loop_hook != ((void*)0))
    ui_loop_hook (0);

  if (quit_flag)
    {
      quit_flag = 0;
      return 1;
    }
  else if (immediate_quit)
    {
      return 1;
    }
  return 0;
}
