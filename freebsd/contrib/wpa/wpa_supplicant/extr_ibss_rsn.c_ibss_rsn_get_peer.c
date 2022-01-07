
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ibss_rsn_peer {int addr; struct ibss_rsn_peer* next; } ;
struct ibss_rsn {struct ibss_rsn_peer* peers; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int const*,int ,int ) ;

__attribute__((used)) static struct ibss_rsn_peer * ibss_rsn_get_peer(struct ibss_rsn *ibss_rsn,
      const u8 *addr)
{
 struct ibss_rsn_peer *peer;

 for (peer = ibss_rsn->peers; peer; peer = peer->next)
  if (os_memcmp(addr, peer->addr, ETH_ALEN) == 0)
   break;
 return peer;
}
