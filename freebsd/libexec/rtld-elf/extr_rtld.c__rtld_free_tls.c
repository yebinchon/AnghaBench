
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RtldLockState ;


 int free_tls (void*,size_t,size_t) ;
 int lock_release (int ,int *) ;
 int rtld_bind_lock ;
 int wlock_acquire (int ,int *) ;

void
_rtld_free_tls(void *tcb, size_t tcbsize, size_t tcbalign)
{
    RtldLockState lockstate;

    wlock_acquire(rtld_bind_lock, &lockstate);
    free_tls(tcb, tcbsize, tcbalign);
    lock_release(rtld_bind_lock, &lockstate);
}
