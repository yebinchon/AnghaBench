
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct current_thread_cleanup {int inferior_ptid; } ;


 int restore_current_thread (int ) ;
 int xfree (struct current_thread_cleanup*) ;

__attribute__((used)) static void
do_restore_current_thread_cleanup (void *arg)
{
  struct current_thread_cleanup *old = arg;
  restore_current_thread (old->inferior_ptid);
  xfree (old);
}
