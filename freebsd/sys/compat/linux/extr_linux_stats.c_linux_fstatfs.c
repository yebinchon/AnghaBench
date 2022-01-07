
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct linux_fstatfs_args {int buf; int fd; } ;
struct l_statfs {int dummy; } ;
typedef int linux_statfs ;


 int M_STATFS ;
 int M_WAITOK ;
 int bsd_to_linux_statfs (struct statfs*,struct l_statfs*) ;
 int copyout (struct l_statfs*,int ,int) ;
 int free (struct statfs*,int ) ;
 int kern_fstatfs (struct thread*,int ,struct statfs*) ;
 struct statfs* malloc (int,int ,int ) ;

int
linux_fstatfs(struct thread *td, struct linux_fstatfs_args *args)
{
 struct l_statfs linux_statfs;
 struct statfs *bsd_statfs;
 int error;

 bsd_statfs = malloc(sizeof(struct statfs), M_STATFS, M_WAITOK);
 error = kern_fstatfs(td, args->fd, bsd_statfs);
 if (error == 0)
  error = bsd_to_linux_statfs(bsd_statfs, &linux_statfs);
 free(bsd_statfs, M_STATFS);
 if (error != 0)
  return (error);
 return (copyout(&linux_statfs, args->buf, sizeof(linux_statfs)));
}
