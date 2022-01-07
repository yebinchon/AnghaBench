
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_condvar {scalar_t__ fc_waitcount; int fc_lock; int fc_waiters; } ;


 int KASSERT (int,char*) ;
 int futex_lock_assert (int ) ;
 scalar_t__ futex_queue_count (int *) ;

__attribute__((used)) static void
futex_condvar_assert(const struct futex_condvar *fc)
{

 KASSERT(fc->fc_waitcount >= futex_queue_count(&fc->fc_waiters),
     ("Total number of waiters cannot be smaller than the wait queue"));
 futex_lock_assert(fc->fc_lock);
}
