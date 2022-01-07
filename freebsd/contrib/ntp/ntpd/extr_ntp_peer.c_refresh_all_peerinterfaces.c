
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int reach; scalar_t__ dstadr; struct peer* p_link; } ;


 struct peer* peer_list ;
 int peer_refresh_interface (struct peer*) ;

void
refresh_all_peerinterfaces(void)
{
 struct peer *p;







 for (p = peer_list; p != ((void*)0); p = p->p_link) {
  if (!(p->dstadr && (p->reach & 0x3)))
   peer_refresh_interface(p);
 }
}
