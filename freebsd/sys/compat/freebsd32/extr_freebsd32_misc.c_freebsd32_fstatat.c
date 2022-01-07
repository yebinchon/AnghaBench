
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ub32 ;
struct thread {int dummy; } ;
struct stat32 {int dummy; } ;
struct stat {int dummy; } ;
struct freebsd32_fstatat_args {int buf; int path; int fd; int flag; } ;


 int UIO_USERSPACE ;
 int copy_stat (struct stat*,struct stat32*) ;
 int copyout (struct stat32*,int ,int) ;
 int kern_statat (struct thread*,int ,int ,int ,int ,struct stat*,int *) ;

int
freebsd32_fstatat(struct thread *td, struct freebsd32_fstatat_args *uap)
{
 struct stat ub;
 struct stat32 ub32;
 int error;

 error = kern_statat(td, uap->flag, uap->fd, uap->path, UIO_USERSPACE,
     &ub, ((void*)0));
 if (error)
  return (error);
 copy_stat(&ub, &ub32);
 error = copyout(&ub32, uap->buf, sizeof(ub32));
 return (error);
}
