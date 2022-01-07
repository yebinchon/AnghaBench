
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urwlock {int dummy; } ;


 int PANIC (char*) ;
 scalar_t__ _thr_rwlock_unlock (struct urwlock*) ;

void
_thr_rwl_unlock(struct urwlock *rwlock)
{

 if (_thr_rwlock_unlock(rwlock))
  PANIC("unlock error");
}
