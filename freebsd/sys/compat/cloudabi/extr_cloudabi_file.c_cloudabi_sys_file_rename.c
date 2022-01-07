
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_file_rename_args {int fd2; int fd1; int path2_len; int path2; int path1_len; int path1; } ;


 int UIO_SYSSPACE ;
 int cloudabi_freestr (char*) ;
 int copyin_path (int ,int ,char**) ;
 int kern_renameat (struct thread*,int ,char*,int ,char*,int ) ;

int
cloudabi_sys_file_rename(struct thread *td,
    struct cloudabi_sys_file_rename_args *uap)
{
 char *old, *new;
 int error;

 error = copyin_path(uap->path1, uap->path1_len, &old);
 if (error != 0)
  return (error);
 error = copyin_path(uap->path2, uap->path2_len, &new);
 if (error != 0) {
  cloudabi_freestr(old);
  return (error);
 }

 error = kern_renameat(td, uap->fd1, old, uap->fd2, new,
     UIO_SYSSPACE);
 cloudabi_freestr(old);
 cloudabi_freestr(new);
 return (error);
}
