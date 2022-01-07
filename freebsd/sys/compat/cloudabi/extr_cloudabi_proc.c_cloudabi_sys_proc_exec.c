
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct thread {int dummy; } ;
struct image_args {int fd; } ;
struct cloudabi_sys_proc_exec_args {int fd; int fds_len; int fds; int data_len; int data; } ;


 int exec_copyin_data_fds (struct thread*,struct image_args*,int ,int ,int ,int ) ;
 int kern_execve (struct thread*,struct image_args*,int *) ;
 int post_execve (struct thread*,int,struct vmspace*) ;
 int pre_execve (struct thread*,struct vmspace**) ;

int
cloudabi_sys_proc_exec(struct thread *td,
    struct cloudabi_sys_proc_exec_args *uap)
{
 struct image_args args;
 struct vmspace *oldvmspace;
 int error;

 error = pre_execve(td, &oldvmspace);
 if (error != 0)
  return (error);
 error = exec_copyin_data_fds(td, &args, uap->data, uap->data_len,
     uap->fds, uap->fds_len);
 if (error == 0) {
  args.fd = uap->fd;
  error = kern_execve(td, &args, ((void*)0));
 }
 post_execve(td, error, oldvmspace);
 return (error);
}
