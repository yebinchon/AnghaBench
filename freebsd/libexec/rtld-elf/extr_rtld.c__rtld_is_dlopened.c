
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dlopened; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 int _rtld_error (char*) ;
 TYPE_1__* dlcheck (void*) ;
 int lock_release (int ,int *) ;
 TYPE_1__* obj_from_addr (void*) ;
 int rlock_acquire (int ,int *) ;
 int rtld_bind_lock ;

int
_rtld_is_dlopened(void *arg)
{
 Obj_Entry *obj;
 RtldLockState lockstate;
 int res;

 rlock_acquire(rtld_bind_lock, &lockstate);
 obj = dlcheck(arg);
 if (obj == ((void*)0))
  obj = obj_from_addr(arg);
 if (obj == ((void*)0)) {
  _rtld_error("No shared object contains address");
  lock_release(rtld_bind_lock, &lockstate);
  return (-1);
 }
 res = obj->dlopened ? 1 : 0;
 lock_release(rtld_bind_lock, &lockstate);
 return (res);
}
