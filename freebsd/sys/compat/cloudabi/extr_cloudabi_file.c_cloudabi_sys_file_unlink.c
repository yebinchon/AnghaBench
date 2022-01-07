
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_file_unlink_args {int flags; int fd; int path_len; int path; } ;


 int CLOUDABI_UNLINK_REMOVEDIR ;
 int FD_NONE ;
 int UIO_SYSSPACE ;
 int cloudabi_freestr (char*) ;
 int copyin_path (int ,int ,char**) ;
 int kern_frmdirat (struct thread*,int ,char*,int ,int ,int ) ;
 int kern_funlinkat (struct thread*,int ,char*,int ,int ,int ,int ) ;

int
cloudabi_sys_file_unlink(struct thread *td,
    struct cloudabi_sys_file_unlink_args *uap)
{
 char *path;
 int error;

 error = copyin_path(uap->path, uap->path_len, &path);
 if (error != 0)
  return (error);

 if (uap->flags & CLOUDABI_UNLINK_REMOVEDIR)
  error = kern_frmdirat(td, uap->fd, path, FD_NONE,
      UIO_SYSSPACE, 0);
 else
  error = kern_funlinkat(td, uap->fd, path, FD_NONE,
      UIO_SYSSPACE, 0, 0);
 cloudabi_freestr(path);
 return (error);
}
