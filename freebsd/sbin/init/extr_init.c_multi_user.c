
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
typedef int state_func_t ;
struct TYPE_6__ {int se_process; int se_started; struct TYPE_6__* se_next; } ;
typedef TYPE_1__ session_t ;
typedef int pid_t ;


 int add_session (TYPE_1__*) ;
 scalar_t__ clean_ttys ;
 int collect_child (int) ;
 scalar_t__ getsecuritylevel () ;
 scalar_t__ requested_transition ;
 scalar_t__ session_has_no_tty (TYPE_1__*) ;
 TYPE_1__* sessions ;
 int setsecuritylevel (int) ;
 int start_getty (TYPE_1__*) ;
 int time (int *) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static state_func_t
multi_user(void)
{
 pid_t pid;
 session_t *sp;

 requested_transition = 0;







 if (getsecuritylevel() == 0)
  setsecuritylevel(1);

 for (sp = sessions; sp; sp = sp->se_next) {
  if (sp->se_process)
   continue;
  if (session_has_no_tty(sp))
   continue;
  if ((pid = start_getty(sp)) == -1) {

   requested_transition = clean_ttys;
   break;
  }
  sp->se_process = pid;
  sp->se_started = time((time_t *) 0);
  add_session(sp);
 }

 while (!requested_transition)
  if ((pid = waitpid(-1, (int *) 0, 0)) != -1)
   collect_child(pid);

 return (state_func_t) requested_transition;
}
