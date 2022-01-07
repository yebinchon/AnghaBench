
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ub32 ;
struct thread {int dummy; } ;
struct stat32 {int dummy; } ;
struct stat {int dummy; } ;
struct freebsd32_fstat_args {int ub; int fd; } ;


 int copy_stat (struct stat*,struct stat32*) ;
 int copyout (struct stat32*,int ,int) ;
 int kern_fstat (struct thread*,int ,struct stat*) ;

int
freebsd32_fstat(struct thread *td, struct freebsd32_fstat_args *uap)
{
 struct stat ub;
 struct stat32 ub32;
 int error;

 error = kern_fstat(td, uap->fd, &ub);
 if (error)
  return (error);
 copy_stat(&ub, &ub32);
 error = copyout(&ub32, uap->ub, sizeof(ub32));
 return (error);
}
