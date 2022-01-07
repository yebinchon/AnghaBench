
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_thread_exit_args {int scope; int lock; } ;
struct cloudabi_sys_lock_unlock_args {int scope; int lock; } ;


 int cloudabi_sys_lock_unlock (struct thread*,struct cloudabi_sys_lock_unlock_args*) ;
 int exit1 (struct thread*,int ,int ) ;
 int kern_thr_exit (struct thread*) ;
 int umtx_thread_exit (struct thread*) ;

int
cloudabi_sys_thread_exit(struct thread *td,
    struct cloudabi_sys_thread_exit_args *uap)
{
 struct cloudabi_sys_lock_unlock_args cloudabi_sys_lock_unlock_args = {
  .lock = uap->lock,
  .scope = uap->scope,
 };

 umtx_thread_exit(td);


 cloudabi_sys_lock_unlock(td, &cloudabi_sys_lock_unlock_args);





 kern_thr_exit(td);
 exit1(td, 0, 0);

}
