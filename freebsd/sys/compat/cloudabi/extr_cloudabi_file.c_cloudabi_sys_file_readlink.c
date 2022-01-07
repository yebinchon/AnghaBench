
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_file_readlink_args {int buf_len; int buf; int fd; int path_len; int path; } ;


 int UIO_SYSSPACE ;
 int UIO_USERSPACE ;
 int cloudabi_freestr (char*) ;
 int copyin_path (int ,int ,char**) ;
 int kern_readlinkat (struct thread*,int ,char*,int ,int ,int ,int ) ;

int
cloudabi_sys_file_readlink(struct thread *td,
    struct cloudabi_sys_file_readlink_args *uap)
{
 char *path;
 int error;

 error = copyin_path(uap->path, uap->path_len, &path);
 if (error != 0)
  return (error);

 error = kern_readlinkat(td, uap->fd, path, UIO_SYSSPACE,
     uap->buf, UIO_USERSPACE, uap->buf_len);
 cloudabi_freestr(path);
 return (error);
}
