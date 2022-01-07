
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct linux_bind_args {int namelen; int s; int name; } ;


 int AT_FDCWD ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int M_SONAME ;
 int PTRIN (int ) ;
 int free (struct sockaddr*,int ) ;
 int kern_bindat (struct thread*,int ,int ,struct sockaddr*) ;
 int linux_to_bsd_sockaddr (int ,struct sockaddr**,int*) ;

int
linux_bind(struct thread *td, struct linux_bind_args *args)
{
 struct sockaddr *sa;
 int error;

 error = linux_to_bsd_sockaddr(PTRIN(args->name), &sa,
     &args->namelen);
 if (error != 0)
  return (error);

 error = kern_bindat(td, AT_FDCWD, args->s, sa);
 free(sa, M_SONAME);


 if (error == EADDRNOTAVAIL && args->namelen != sizeof(struct sockaddr_in))
  return (EINVAL);
 return (error);
}
