
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {struct peer* p_link; } ;


 struct peer* peer_list ;
 int peer_reset (struct peer*) ;

void
peer_all_reset(void)
{
 struct peer *peer;

 for (peer = peer_list; peer != ((void*)0); peer = peer->p_link)
  peer_reset(peer);
}
