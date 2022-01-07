
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_condvar {int fc_waiters; } ;
typedef int cloudabi_condvar_t ;


 int CLOUDABI_CONDVAR_HAS_NO_WAITERS ;
 scalar_t__ futex_queue_count (int *) ;
 int futex_user_store (int *,int ) ;

__attribute__((used)) static int
futex_condvar_unmanage(struct futex_condvar *fc,
    cloudabi_condvar_t *condvar)
{

 if (futex_queue_count(&fc->fc_waiters) != 0)
  return (0);
 return (futex_user_store(condvar, CLOUDABI_CONDVAR_HAS_NO_WAITERS));
}
