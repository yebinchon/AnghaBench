
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct l_ifreq {int ifr_flags; } ;
struct ifnet {int dummy; } ;
typedef int l_short ;
typedef int flags ;


 int copyout (int *,int *,int) ;
 int linux_ifflags (struct ifnet*,int *) ;

__attribute__((used)) static int
linux_gifflags(struct thread *td, struct ifnet *ifp, struct l_ifreq *ifr)
{
 l_short flags;

 linux_ifflags(ifp, &flags);

 return (copyout(&flags, &ifr->ifr_flags, sizeof(flags)));
}
