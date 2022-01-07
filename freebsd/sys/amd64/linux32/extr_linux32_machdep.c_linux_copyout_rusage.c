
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int dummy; } ;
struct l_rusage {int dummy; } ;


 int bsd_to_linux_rusage (struct rusage*,struct l_rusage*) ;
 int copyout (struct l_rusage*,void*,int) ;

int
linux_copyout_rusage(struct rusage *ru, void *uaddr)
{
 struct l_rusage lru;

 bsd_to_linux_rusage(ru, &lru);

 return (copyout(&lru, uaddr, sizeof(struct l_rusage)));
}
