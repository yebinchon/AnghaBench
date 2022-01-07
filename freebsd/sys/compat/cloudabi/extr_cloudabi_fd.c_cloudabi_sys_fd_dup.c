
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_fd_dup_args {int from; } ;


 int FDDUP_NORMAL ;
 int kern_dup (struct thread*,int ,int ,int ,int ) ;

int
cloudabi_sys_fd_dup(struct thread *td, struct cloudabi_sys_fd_dup_args *uap)
{

 return (kern_dup(td, FDDUP_NORMAL, 0, uap->from, 0));
}
