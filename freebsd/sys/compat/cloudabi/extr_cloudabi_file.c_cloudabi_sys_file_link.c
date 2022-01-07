
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int flags; int fd; } ;
struct cloudabi_sys_file_link_args {TYPE_1__ fd1; int fd2; int path2_len; int path2; int path1_len; int path1; } ;


 int CLOUDABI_LOOKUP_SYMLINK_FOLLOW ;
 int FOLLOW ;
 int NOFOLLOW ;
 int UIO_SYSSPACE ;
 int cloudabi_freestr (char*) ;
 int copyin_path (int ,int ,char**) ;
 int kern_linkat (struct thread*,int ,int ,char*,char*,int ,int ) ;

int
cloudabi_sys_file_link(struct thread *td,
    struct cloudabi_sys_file_link_args *uap)
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

 error = kern_linkat(td, uap->fd1.fd, uap->fd2, path1, path2,
     UIO_SYSSPACE, (uap->fd1.flags & CLOUDABI_LOOKUP_SYMLINK_FOLLOW) ?
     FOLLOW : NOFOLLOW);
 cloudabi_freestr(path1);
 cloudabi_freestr(path2);
 return (error);
}
