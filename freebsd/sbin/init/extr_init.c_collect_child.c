
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_9__ {int se_process; int se_flags; int se_started; struct TYPE_9__* se_prev; struct TYPE_9__* se_next; } ;
typedef TYPE_1__ session_t ;
typedef int pid_t ;


 int SE_SHUTDOWN ;
 int add_session (TYPE_1__*) ;
 int clean_ttys ;
 int del_session (TYPE_1__*) ;
 TYPE_1__* find_session (int) ;
 int free_session (TYPE_1__*) ;
 int requested_transition ;
 scalar_t__ session_has_no_tty (TYPE_1__*) ;
 TYPE_1__* sessions ;
 int start_getty (TYPE_1__*) ;
 int time (int *) ;

__attribute__((used)) static void
collect_child(pid_t pid)
{
 session_t *sp, *sprev, *snext;

 if (! sessions)
  return;

 if (! (sp = find_session(pid)))
  return;

 del_session(sp);
 sp->se_process = 0;

 if (sp->se_flags & SE_SHUTDOWN ||
     session_has_no_tty(sp)) {
  if ((sprev = sp->se_prev) != ((void*)0))
   sprev->se_next = sp->se_next;
  else
   sessions = sp->se_next;
  if ((snext = sp->se_next) != ((void*)0))
   snext->se_prev = sp->se_prev;
  free_session(sp);
  return;
 }

 if ((pid = start_getty(sp)) == -1) {

  requested_transition = clean_ttys;
  return;
 }

 sp->se_process = pid;
 sp->se_started = time((time_t *) 0);
 add_session(sp);
}
