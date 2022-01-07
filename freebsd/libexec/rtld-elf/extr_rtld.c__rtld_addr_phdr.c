
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_phdr_info {int dummy; } ;
typedef int RtldLockState ;
typedef int Obj_Entry ;


 int _rtld_error (char*) ;
 int lock_release (int ,int *) ;
 int * obj_from_addr (void const*) ;
 int rlock_acquire (int ,int *) ;
 int rtld_bind_lock ;
 int rtld_fill_dl_phdr_info (int const*,struct dl_phdr_info*) ;

int
_rtld_addr_phdr(const void *addr, struct dl_phdr_info *phdr_info)
{
    const Obj_Entry *obj;
    RtldLockState lockstate;

    rlock_acquire(rtld_bind_lock, &lockstate);
    obj = obj_from_addr(addr);
    if (obj == ((void*)0)) {
        _rtld_error("No shared object contains address");
 lock_release(rtld_bind_lock, &lockstate);
        return (0);
    }
    rtld_fill_dl_phdr_info(obj, phdr_info);
    lock_release(rtld_bind_lock, &lockstate);
    return (1);
}
