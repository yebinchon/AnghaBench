
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct stat32 {int dummy; } ;
struct stat {int dummy; } ;
struct freebsd32_fhstat_args {int sb; int u_fhp; } ;
struct fhandle {int dummy; } ;
typedef int sb32 ;
typedef int fhandle_t ;


 int copy_stat (struct stat*,struct stat32*) ;
 int copyin (int ,struct fhandle*,int) ;
 int copyout (struct stat32*,int ,int) ;
 int kern_fhstat (struct thread*,struct fhandle,struct stat*) ;

int
freebsd32_fhstat(struct thread *td, struct freebsd32_fhstat_args *uap)
{
 struct stat sb;
 struct stat32 sb32;
 struct fhandle fh;
 int error;

 error = copyin(uap->u_fhp, &fh, sizeof(fhandle_t));
        if (error != 0)
                return (error);
 error = kern_fhstat(td, fh, &sb);
 if (error != 0)
  return (error);
 copy_stat(&sb, &sb32);
 error = copyout(&sb32, uap->sb, sizeof (sb32));
 return (error);
}
