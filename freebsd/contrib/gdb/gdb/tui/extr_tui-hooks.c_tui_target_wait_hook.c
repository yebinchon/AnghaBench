
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_waitstatus {int dummy; } ;
typedef int ptid_t ;


 int endwin () ;
 int target_terminal_inferior () ;
 int target_terminal_ours () ;
 int target_wait (int ,struct target_waitstatus*) ;
 scalar_t__ tui_active ;
 int tui_target_has_run ;

__attribute__((used)) static ptid_t
tui_target_wait_hook (ptid_t pid, struct target_waitstatus *status)
{
  ptid_t res;
  tui_target_has_run = 1;
  res = target_wait (pid, status);

  if (tui_active)
    {

    }
  return res;
}
