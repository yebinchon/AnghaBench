
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove_thread_event_breakpoints () ;
 int unpush_target (int *) ;
 scalar_t__ uw_thread_active ;
 int uw_thread_ops ;

__attribute__((used)) static void
deactivate_uw_thread (void)
{
  remove_thread_event_breakpoints ();
  uw_thread_active = 0;
  unpush_target (&uw_thread_ops);
}
