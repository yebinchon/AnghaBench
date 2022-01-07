
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_proc_exit_args {int rval; } ;


 int exit1 (struct thread*,int ,int ) ;

int
cloudabi_sys_proc_exit(struct thread *td,
    struct cloudabi_sys_proc_exit_args *uap)
{

 exit1(td, uap->rval, 0);

}
