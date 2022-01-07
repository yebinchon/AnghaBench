
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRAZY_MAX_THREADS ;
 scalar_t__ MAGIC_NULL_PID ;
 scalar_t__ PIDGET (int ) ;
 int inferior_ptid ;
 int remote_current_thread (int ) ;
 int remote_newthread_step ;
 int remote_threadlist_iterator (int ,int ,int ) ;

__attribute__((used)) static void
remote_find_new_threads (void)
{
  remote_threadlist_iterator (remote_newthread_step, 0,
         CRAZY_MAX_THREADS);
  if (PIDGET (inferior_ptid) == MAGIC_NULL_PID)
    inferior_ptid = remote_current_thread (inferior_ptid);
}
