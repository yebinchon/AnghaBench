
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* lock ) (int ,void*) ;} ;


 int EVTHREAD_TRY ;
 TYPE_1__ evthread_lock_fns_ ;
 int stub1 (int ,void*) ;

__attribute__((used)) static inline int
EVLOCK_TRY_LOCK_(void *lock)
{
 if (lock && evthread_lock_fns_.lock) {
  int r = evthread_lock_fns_.lock(EVTHREAD_TRY, lock);
  return !r;
 } else {


  return 1;
 }
}
