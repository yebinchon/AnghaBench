
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_file_symlink_args {int fd; int path2_len; int path2; int path1_len; int path1; } ;


 int UIO_SYSSPACE ;
 int cloudabi_freestr (char*) ;
 int copyin_path (int ,int ,char**) ;
 int kern_symlinkat (struct thread*,char*,int ,char*,int ) ;

int
cloudabi_sys_file_symlink(struct thread *td,
    struct cloudabi_sys_file_symlink_args *uap)
{
 char *path1, *path2;
 int error;

 error = copyin_path(uap->path1, uap->path1_len, &path1);
 if (error != 0)
  return (error);
 error = copyin_path(uap->path2, uap->path2_len, &path2);
 if (error != 0) {
  cloudabi_freestr(path1);
  return (error);
 }

 error = kern_symlinkat(td, path1, uap->fd, path2, UIO_SYSSPACE);
 cloudabi_freestr(path1);
 cloudabi_freestr(path2);
 return (error);
}
