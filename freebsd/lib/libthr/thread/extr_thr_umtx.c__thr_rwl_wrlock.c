
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urwlock {int dummy; } ;


 int EINTR ;
 int PANIC (char*) ;
 int __thr_rwlock_wrlock (struct urwlock*,int *) ;
 scalar_t__ _thr_rwlock_trywrlock (struct urwlock*) ;

void
_thr_rwl_wrlock(struct urwlock *rwlock)
{
 int ret;

 for (;;) {
  if (_thr_rwlock_trywrlock(rwlock) == 0)
   return;
  ret = __thr_rwlock_wrlock(rwlock, ((void*)0));
  if (ret == 0)
   return;
  if (ret != EINTR)
   PANIC("wrlock error");
 }
}
