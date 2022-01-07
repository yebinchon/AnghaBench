
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct thread {int dummy; } ;
struct freebsd32___sysctl_args {int namelen; scalar_t__ oldlenp; int newlen; int new; int old; int name; } ;


 int CTL_MAXNAME ;
 int EFAULT ;
 int EINVAL ;
 int SCTL_MASK32 ;
 int copyin (int ,int*,int) ;
 int fueword32 (scalar_t__,size_t*) ;
 int suword32 (scalar_t__,size_t) ;
 int userland_sysctl (struct thread*,int*,int,int ,size_t*,int,int ,int ,size_t*,int ) ;

int
freebsd32___sysctl(struct thread *td, struct freebsd32___sysctl_args *uap)
{
 int error, name[CTL_MAXNAME];
 size_t j, oldlen;
 uint32_t tmp;

 if (uap->namelen > CTL_MAXNAME || uap->namelen < 2)
  return (EINVAL);
  error = copyin(uap->name, name, uap->namelen * sizeof(int));
  if (error)
  return (error);
 if (uap->oldlenp) {
  error = fueword32(uap->oldlenp, &tmp);
  oldlen = tmp;
 } else {
  oldlen = 0;
 }
 if (error != 0)
  return (EFAULT);
 error = userland_sysctl(td, name, uap->namelen,
  uap->old, &oldlen, 1,
  uap->new, uap->newlen, &j, SCTL_MASK32);
 if (error)
  return (error);
 if (uap->oldlenp)
  suword32(uap->oldlenp, j);
 return (0);
}
