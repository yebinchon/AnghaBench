
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int num; int ptid; struct thread_info* next; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 int execute_command (char*,int) ;
 int inferior_ptid ;
 struct cleanup* make_cleanup (int ,void*) ;
 struct cleanup* make_cleanup_restore_current_thread (int ) ;
 int printf_filtered (char*,int ,int ) ;
 int strcpy (char*,char*) ;
 int switch_to_thread (int ) ;
 int target_find_new_threads () ;
 int target_pid_to_str (int ) ;
 int target_tid_to_str (int ) ;
 scalar_t__ thread_alive (struct thread_info*) ;
 struct thread_info* thread_list ;
 int xfree ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
thread_apply_all_command (char *cmd, int from_tty)
{
  struct thread_info *tp;
  struct cleanup *old_chain;
  struct cleanup *saved_cmd_cleanup_chain;
  char *saved_cmd;

  if (cmd == ((void*)0) || *cmd == '\000')
    error ("Please specify a command following the thread ID list");

  old_chain = make_cleanup_restore_current_thread (inferior_ptid);



  target_find_new_threads ();



  saved_cmd = xstrdup (cmd);
  saved_cmd_cleanup_chain = make_cleanup (xfree, (void *) saved_cmd);
  for (tp = thread_list; tp; tp = tp->next)
    if (thread_alive (tp))
      {
 switch_to_thread (tp->ptid);




 printf_filtered ("\nThread %d (%s):\n", tp->num,
    target_pid_to_str (inferior_ptid));

 execute_command (cmd, from_tty);
 strcpy (cmd, saved_cmd);
      }

  do_cleanups (saved_cmd_cleanup_chain);
  do_cleanups (old_chain);
}
