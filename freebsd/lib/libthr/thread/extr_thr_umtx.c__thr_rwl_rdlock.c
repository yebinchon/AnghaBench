
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urwlock {int dummy; } ;


 int EINTR ;
 int PANIC (char*) ;
 int URWLOCK_PREFER_READER ;
 int __thr_rwlock_rdlock (struct urwlock*,int ,int *) ;
 scalar_t__ _thr_rwlock_tryrdlock (struct urwlock*,int ) ;

void
_thr_rwl_rdlock(struct urwlock *rwlock)
{
 int ret;

 for (;;) {
  if (_thr_rwlock_tryrdlock(rwlock, URWLOCK_PREFER_READER) == 0)
   return;
  ret = __thr_rwlock_rdlock(rwlock, URWLOCK_PREFER_READER, ((void*)0));
  if (ret == 0)
   return;
  if (ret != EINTR)
   PANIC("rdlock error");
 }
}
