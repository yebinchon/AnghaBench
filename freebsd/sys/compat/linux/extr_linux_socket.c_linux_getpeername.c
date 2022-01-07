
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int sockaddr ;
struct linux_getpeername_args {int namelen; int addr; int s; } ;
typedef int l_sockaddr ;
typedef int len ;


 int EINVAL ;
 int M_SONAME ;
 int PTRIN (int ) ;
 int bsd_to_linux_sockaddr (int*,int**,int) ;
 int copyin (int ,int*,int) ;
 int copyout (int*,int ,int) ;
 int free (int*,int ) ;
 int kern_getpeername (struct thread*,int ,int**,int*) ;

int
linux_getpeername(struct thread *td, struct linux_getpeername_args *args)
{
 struct l_sockaddr *lsa;
 struct sockaddr *sa;
 int len, error;

 error = copyin(PTRIN(args->namelen), &len, sizeof(len));
 if (error != 0)
  return (error);
 if (len < 0)
  return (EINVAL);

 error = kern_getpeername(td, args->s, &sa, &len);
 if (error != 0)
  return (error);

 if (len != 0) {
  error = bsd_to_linux_sockaddr(sa, &lsa, len);
  if (error == 0)
   error = copyout(lsa, PTRIN(args->addr),
       len);
  free(lsa, M_SONAME);
 }

 free(sa, M_SONAME);
 if (error == 0)
  error = copyout(&len, PTRIN(args->namelen), sizeof(len));
 return (error);
}
