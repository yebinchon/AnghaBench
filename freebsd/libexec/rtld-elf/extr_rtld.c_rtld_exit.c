
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RtldLockState ;


 int dbg (char*) ;
 int libmap_disable ;
 int list_fini ;
 int lm_fini () ;
 int lock_release (int ,int *) ;
 int objlist_call_fini (int *,int *,int *) ;
 int rtld_bind_lock ;
 int wlock_acquire (int ,int *) ;

__attribute__((used)) static void
rtld_exit(void)
{
    RtldLockState lockstate;

    wlock_acquire(rtld_bind_lock, &lockstate);
    dbg("rtld_exit()");
    objlist_call_fini(&list_fini, ((void*)0), &lockstate);

    if (!libmap_disable)
        lm_fini();
    lock_release(rtld_bind_lock, &lockstate);
}
