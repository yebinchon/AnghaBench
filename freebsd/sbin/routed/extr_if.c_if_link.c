
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {int int_if_flags; int int_state; struct interface* int_nhash; struct interface** int_nhash_prev; int int_name; struct interface* int_bhash; struct interface** int_bhash_prev; int int_brdaddr; struct interface* int_ahash; struct interface** int_ahash_prev; int int_addr; } ;


 struct interface** AHASH (int ) ;
 struct interface** BHASH (int ) ;
 int IFF_BROADCAST ;
 int IS_ALIAS ;
 int IS_REMOTE ;
 int LIST_INSERT_HEAD (int *,struct interface*,int ) ;
 int ifnet ;
 int int_list ;
 struct interface** nhash (int ) ;
 int remote_if ;
 int remote_list ;

void
if_link(struct interface *ifp)
{
 struct interface **hifp;

 LIST_INSERT_HEAD(&ifnet, ifp, int_list);

 hifp = AHASH(ifp->int_addr);
 ifp->int_ahash_prev = hifp;
 if ((ifp->int_ahash = *hifp) != ((void*)0))
  (*hifp)->int_ahash_prev = &ifp->int_ahash;
 *hifp = ifp;

 if (ifp->int_if_flags & IFF_BROADCAST) {
  hifp = BHASH(ifp->int_brdaddr);
  ifp->int_bhash_prev = hifp;
  if ((ifp->int_bhash = *hifp) != ((void*)0))
   (*hifp)->int_bhash_prev = &ifp->int_bhash;
  *hifp = ifp;
 }

 if (ifp->int_state & IS_REMOTE)
  LIST_INSERT_HEAD(&remote_if, ifp, remote_list);

 hifp = nhash(ifp->int_name);
 if (ifp->int_state & IS_ALIAS) {

  while (*hifp != ((void*)0))
   hifp = &(*hifp)->int_nhash;
 }
 ifp->int_nhash_prev = hifp;
 if ((ifp->int_nhash = *hifp) != ((void*)0))
  (*hifp)->int_nhash_prev = &ifp->int_nhash;
 *hifp = ifp;
}
