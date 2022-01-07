
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RtldLockState ;


 int TAILQ_FIRST (int *) ;
 void* allocate_tls (int ,void*,size_t,size_t) ;
 int globallist_curr (int ) ;
 int lock_release (int ,int *) ;
 int obj_list ;
 int rtld_bind_lock ;
 int wlock_acquire (int ,int *) ;

void *
_rtld_allocate_tls(void *oldtls, size_t tcbsize, size_t tcbalign)
{
    void *ret;
    RtldLockState lockstate;

    wlock_acquire(rtld_bind_lock, &lockstate);
    ret = allocate_tls(globallist_curr(TAILQ_FIRST(&obj_list)), oldtls,
      tcbsize, tcbalign);
    lock_release(rtld_bind_lock, &lockstate);
    return (ret);
}
