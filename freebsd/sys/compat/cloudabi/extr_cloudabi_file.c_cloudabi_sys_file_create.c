
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_file_create_args {int type; int fd; int path_len; int path; } ;



 int EINVAL ;
 int UIO_SYSSPACE ;
 int cloudabi_freestr (char*) ;
 int copyin_path (int ,int ,char**) ;
 int kern_mkdirat (struct thread*,int ,char*,int ,int) ;

int
cloudabi_sys_file_create(struct thread *td,
    struct cloudabi_sys_file_create_args *uap)
{
 char *path;
 int error;

 error = copyin_path(uap->path, uap->path_len, &path);
 if (error != 0)
  return (error);






 switch (uap->type) {
 case 128:
  error = kern_mkdirat(td, uap->fd, path, UIO_SYSSPACE, 0777);
  break;
 default:
  error = EINVAL;
  break;
 }
 cloudabi_freestr(path);
 return (error);
}
