
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct thread {int dummy; } ;
struct freebsd32___sysctlbyname_args {int * oldlenp; int newlen; int new; int old; int namelen; int name; } ;


 int EFAULT ;
 int SCTL_MASK32 ;
 int fueword32 (int *,size_t*) ;
 int kern___sysctlbyname (struct thread*,int ,int ,int ,size_t*,int ,int ,size_t*,int ,int) ;
 int suword32 (int *,size_t) ;

int
freebsd32___sysctlbyname(struct thread *td,
    struct freebsd32___sysctlbyname_args *uap)
{
 size_t oldlen, rv;
 int error;
 uint32_t tmp;

 if (uap->oldlenp != ((void*)0)) {
  error = fueword32(uap->oldlenp, &tmp);
  oldlen = tmp;
 } else {
  error = oldlen = 0;
 }
 if (error != 0)
  return (EFAULT);
 error = kern___sysctlbyname(td, uap->name, uap->namelen, uap->old,
     &oldlen, uap->new, uap->newlen, &rv, SCTL_MASK32, 1);
 if (error != 0)
  return (error);
 if (uap->oldlenp != ((void*)0))
  error = suword32(uap->oldlenp, rv);

 return (error);
}
