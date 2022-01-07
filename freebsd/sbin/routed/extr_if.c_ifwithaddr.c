
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {scalar_t__ int_addr; int int_state; scalar_t__ int_brdaddr; struct interface* int_bhash; struct interface* int_ahash; } ;
typedef scalar_t__ naddr ;


 struct interface** AHASH (scalar_t__) ;
 struct interface** BHASH (scalar_t__) ;
 int IS_BROKE ;
 int IS_PASSIVE ;
 int IS_REMOTE ;

struct interface *
ifwithaddr(naddr addr,
    int bcast,
    int remote)
{
 struct interface *ifp, *possible = ((void*)0);

 remote = (remote == 0) ? IS_REMOTE : 0;

 for (ifp = *AHASH(addr); ifp; ifp = ifp->int_ahash) {
  if (ifp->int_addr != addr)
   continue;
  if ((ifp->int_state & remote) != 0)
   continue;
  if ((ifp->int_state & (IS_BROKE | IS_PASSIVE)) == 0)
   return ifp;
  possible = ifp;
 }

 if (possible || !bcast)
  return possible;

 for (ifp = *BHASH(addr); ifp; ifp = ifp->int_bhash) {
  if (ifp->int_brdaddr != addr)
   continue;
  if ((ifp->int_state & remote) != 0)
   continue;
  if ((ifp->int_state & (IS_BROKE | IS_PASSIVE)) == 0)
   return ifp;
  possible = ifp;
 }

 return possible;
}
