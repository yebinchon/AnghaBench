
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__* td_retval; } ;
struct cloudabi_sys_fd_replace_args {int to; int from; } ;


 int FDDUP_MUSTREPLACE ;
 int kern_dup (struct thread*,int ,int ,int ,int ) ;

int
cloudabi_sys_fd_replace(struct thread *td,
    struct cloudabi_sys_fd_replace_args *uap)
{
 int error;
 error = kern_dup(td, FDDUP_MUSTREPLACE, 0, uap->from, uap->to);
 td->td_retval[0] = 0;
 return (error);
}
