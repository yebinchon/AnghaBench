
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_waitstatus {int dummy; } ;
typedef int ptid_t ;


 int PIDGET (int ) ;
 int child_kill_inferior () ;
 int get_child_debug_event (int,struct target_waitstatus*) ;
 int pid_to_ptid (int) ;
 int ui_loop_hook (int ) ;

__attribute__((used)) static ptid_t
child_wait (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  int pid = PIDGET (ptid);







  while (1)
    {
      int retval = get_child_debug_event (pid, ourstatus);
      if (retval)
 return pid_to_ptid (retval);
      else
 {
   int detach = 0;

   if (ui_loop_hook != ((void*)0))
     detach = ui_loop_hook (0);

   if (detach)
     child_kill_inferior ();
 }
    }
}
