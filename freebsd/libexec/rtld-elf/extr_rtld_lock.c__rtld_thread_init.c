
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct RtldLockInfo {int at_fork; int thread_clr_flag; int thread_set_flag; int (* lock_release ) (void*) ;int (* wlock_acquire ) (void*) ;int rlock_acquire; int (* lock_destroy ) (void*) ;void* (* lock_create ) () ;} ;
struct TYPE_4__ {int at_fork; int thread_clr_flag; int thread_set_flag; int (* lock_release ) (void*) ;int (* wlock_acquire ) (void*) ;int rlock_acquire; int (* lock_destroy ) (void*) ;void* (* lock_create ) () ;} ;
struct TYPE_3__ {void* handle; int mask; } ;


 int RTLD_LOCK_CNT ;
 int abort () ;
 int dbg (char*) ;
 struct RtldLockInfo deflockinfo ;
 TYPE_2__ lockinfo ;
 TYPE_1__* rtld_locks ;
 void* stub1 () ;
 int stub2 (void*) ;
 int stub3 (void*) ;
 int stub4 (void*) ;
 int stub5 (void*) ;
 int thread_mask_clear (int ) ;
 int thread_mask_set (int) ;

void
_rtld_thread_init(struct RtldLockInfo *pli)
{
 int flags, i;
 void *locks[RTLD_LOCK_CNT];


 flags = thread_mask_set(~0);

 if (pli == ((void*)0))
  pli = &deflockinfo;


 for (i = 0; i < RTLD_LOCK_CNT; i++)
  if ((locks[i] = pli->lock_create()) == ((void*)0))
   break;

 if (i < RTLD_LOCK_CNT) {
  while (--i >= 0)
   pli->lock_destroy(locks[i]);
  abort();
 }

 for (i = 0; i < RTLD_LOCK_CNT; i++) {
  if (rtld_locks[i].handle == ((void*)0))
   continue;
  if (flags & rtld_locks[i].mask)
   lockinfo.lock_release(rtld_locks[i].handle);
  lockinfo.lock_destroy(rtld_locks[i].handle);
 }

 for (i = 0; i < RTLD_LOCK_CNT; i++) {
  rtld_locks[i].handle = locks[i];
  if (flags & rtld_locks[i].mask)
   pli->wlock_acquire(rtld_locks[i].handle);
 }

 lockinfo.lock_create = pli->lock_create;
 lockinfo.lock_destroy = pli->lock_destroy;
 lockinfo.rlock_acquire = pli->rlock_acquire;
 lockinfo.wlock_acquire = pli->wlock_acquire;
 lockinfo.lock_release = pli->lock_release;
 lockinfo.thread_set_flag = pli->thread_set_flag;
 lockinfo.thread_clr_flag = pli->thread_clr_flag;
 lockinfo.at_fork = pli->at_fork;


 thread_mask_clear(~0);
 thread_mask_set(flags);
 dbg("_rtld_thread_init: done");
}
