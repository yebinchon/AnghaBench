
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int num; int ptid; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 int error (char*,...) ;
 int execute_command (char*,int) ;
 struct thread_info* find_thread_id (int) ;
 int inferior_ptid ;
 int isalpha (char) ;
 struct cleanup* make_cleanup (int ,void*) ;
 struct cleanup* make_cleanup_restore_current_thread (int ) ;
 int printf_filtered (char*,int ,int ) ;
 int strcpy (char*,char*) ;
 int strtol (char*,char**,int) ;
 int switch_to_thread (int ) ;
 int target_pid_to_str (int ) ;
 int target_tid_to_str (int ) ;
 int thread_alive (struct thread_info*) ;
 int warning (char*,int) ;
 int xfree ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
thread_apply_command (char *tidlist, int from_tty)
{
  char *cmd;
  char *p;
  struct cleanup *old_chain;
  struct cleanup *saved_cmd_cleanup_chain;
  char *saved_cmd;

  if (tidlist == ((void*)0) || *tidlist == '\000')
    error ("Please specify a thread ID list");

  for (cmd = tidlist; *cmd != '\000' && !isalpha (*cmd); cmd++);

  if (*cmd == '\000')
    error ("Please specify a command following the thread ID list");

  old_chain = make_cleanup_restore_current_thread (inferior_ptid);



  saved_cmd = xstrdup (cmd);
  saved_cmd_cleanup_chain = make_cleanup (xfree, (void *) saved_cmd);
  while (tidlist < cmd)
    {
      struct thread_info *tp;
      int start, end;

      start = strtol (tidlist, &p, 10);
      if (p == tidlist)
 error ("Error parsing %s", tidlist);
      tidlist = p;

      while (*tidlist == ' ' || *tidlist == '\t')
 tidlist++;

      if (*tidlist == '-')
 {
   tidlist++;
   end = strtol (tidlist, &p, 10);
   if (p == tidlist)
     error ("Error parsing %s", tidlist);
   tidlist = p;

   while (*tidlist == ' ' || *tidlist == '\t')
     tidlist++;
 }
      else
 end = start;

      for (; start <= end; start++)
 {
   tp = find_thread_id (start);

   if (!tp)
     warning ("Unknown thread %d.", start);
   else if (!thread_alive (tp))
     warning ("Thread %d has terminated.", start);
   else
     {
       switch_to_thread (tp->ptid);




       printf_filtered ("\nThread %d (%s):\n", tp->num,
          target_pid_to_str (inferior_ptid));

       execute_command (cmd, from_tty);
       strcpy (cmd, saved_cmd);
     }
 }
    }

  do_cleanups (saved_cmd_cleanup_chain);
  do_cleanups (old_chain);
}
