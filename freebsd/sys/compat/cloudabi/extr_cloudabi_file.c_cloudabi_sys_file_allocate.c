
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_file_allocate_args {int len; int offset; int fd; } ;


 int kern_posix_fallocate (struct thread*,int ,int ,int ) ;

int
cloudabi_sys_file_allocate(struct thread *td,
    struct cloudabi_sys_file_allocate_args *uap)
{

 return (kern_posix_fallocate(td, uap->fd, uap->offset, uap->len));
}
