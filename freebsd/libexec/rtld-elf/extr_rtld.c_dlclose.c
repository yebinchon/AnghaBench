
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RtldLockState ;


 int dlclose_locked (void*,int *) ;
 int lock_release (int ,int *) ;
 int rtld_bind_lock ;
 int wlock_acquire (int ,int *) ;

int
dlclose(void *handle)
{
 RtldLockState lockstate;
 int error;

 wlock_acquire(rtld_bind_lock, &lockstate);
 error = dlclose_locked(handle, &lockstate);
 lock_release(rtld_bind_lock, &lockstate);
 return (error);
}
