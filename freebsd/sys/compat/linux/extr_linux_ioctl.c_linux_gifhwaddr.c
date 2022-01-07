
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_sockaddr {int dummy; } ;
struct l_ifreq {int ifr_hwaddr; } ;
struct ifnet {int dummy; } ;
typedef int lsa ;


 int ENOENT ;
 int copyout (struct l_sockaddr*,int *,int) ;
 scalar_t__ linux_ifhwaddr (struct ifnet*,struct l_sockaddr*) ;

__attribute__((used)) static int
linux_gifhwaddr(struct ifnet *ifp, struct l_ifreq *ifr)
{
 struct l_sockaddr lsa;

 if (linux_ifhwaddr(ifp, &lsa) != 0)
  return (ENOENT);

 return (copyout(&lsa, &ifr->ifr_hwaddr, sizeof(lsa)));
}
