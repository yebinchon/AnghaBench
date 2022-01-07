
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pthread_mutex {int m_flags; } ;
struct pthread {scalar_t__ nwaiter_defer; TYPE_1__* wake_addr; int ** defer_waiters; struct pthread_mutex* mutex_obj; } ;
struct broadcast_arg {scalar_t__ count; int ** waddrs; struct pthread* curthread; } ;
struct TYPE_2__ {int value; } ;


 scalar_t__ MAX_DEFER_WAITERS ;
 int PMUTEX_FLAG_DEFERRED ;
 scalar_t__ PMUTEX_OWNER_ID (struct pthread_mutex*) ;
 scalar_t__ TID (struct pthread*) ;
 int _thr_wake_all (int **,scalar_t__) ;

__attribute__((used)) static void
drop_cb(struct pthread *td, void *arg)
{
 struct broadcast_arg *ba = arg;
 struct pthread_mutex *mp;
 struct pthread *curthread = ba->curthread;

 mp = td->mutex_obj;
 if (PMUTEX_OWNER_ID(mp) == TID(curthread)) {
  if (curthread->nwaiter_defer >= MAX_DEFER_WAITERS) {
   _thr_wake_all(curthread->defer_waiters,
       curthread->nwaiter_defer);
   curthread->nwaiter_defer = 0;
  }
  curthread->defer_waiters[curthread->nwaiter_defer++] =
      &td->wake_addr->value;
  mp->m_flags |= PMUTEX_FLAG_DEFERRED;
 } else {
  if (ba->count >= MAX_DEFER_WAITERS) {
   _thr_wake_all(ba->waddrs, ba->count);
   ba->count = 0;
  }
  ba->waddrs[ba->count++] = &td->wake_addr->value;
 }
}
