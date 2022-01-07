
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int dummy; } ;


 int INC_PEER_ALLOC ;
 int LINK_SLIST (int ,struct peer*,int ) ;
 struct peer* eallocarray (int,int) ;
 int p_link ;
 int peer_free ;
 int peer_free_count ;
 int total_peer_structs ;

__attribute__((used)) static void
getmorepeermem(void)
{
 int i;
 struct peer *peers;

 peers = eallocarray(INC_PEER_ALLOC, sizeof(*peers));

 for (i = INC_PEER_ALLOC - 1; i >= 0; i--)
  LINK_SLIST(peer_free, &peers[i], p_link);

 total_peer_structs += INC_PEER_ALLOC;
 peer_free_count += INC_PEER_ALLOC;
}
