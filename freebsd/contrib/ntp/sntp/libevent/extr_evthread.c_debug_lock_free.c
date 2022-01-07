
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_lock {int count; unsigned int locktype; int signature; int * lock; } ;
struct TYPE_2__ {int (* free ) (int *,int) ;} ;


 int DEBUG_LOCK_SIG ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EVUTIL_ASSERT (int) ;
 int mm_free (struct debug_lock*) ;
 TYPE_1__ original_lock_fns_ ;
 int stub1 (int *,int) ;

__attribute__((used)) static void
debug_lock_free(void *lock_, unsigned locktype)
{
 struct debug_lock *lock = lock_;
 EVUTIL_ASSERT(lock->count == 0);
 EVUTIL_ASSERT(locktype == lock->locktype);
 EVUTIL_ASSERT(DEBUG_LOCK_SIG == lock->signature);
 if (original_lock_fns_.free) {
  original_lock_fns_.free(lock->lock,
      lock->locktype|EVTHREAD_LOCKTYPE_RECURSIVE);
 }
 lock->lock = ((void*)0);
 lock->count = -100;
 lock->signature = 0x12300fda;
 mm_free(lock);
}
