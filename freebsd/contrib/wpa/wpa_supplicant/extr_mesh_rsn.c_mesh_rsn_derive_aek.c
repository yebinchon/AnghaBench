
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int aek; TYPE_1__* sae; int * addr; } ;
struct mesh_rsn {TYPE_2__* wpa_s; } ;
typedef int context ;
struct TYPE_4__ {int * own_addr; } ;
struct TYPE_3__ {int pmk; } ;


 int ETH_ALEN ;
 int RSN_AUTH_KEY_MGMT_SAE ;
 int RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int *,int ) ;
 scalar_t__ os_memcmp (int *,int *,int) ;
 int os_memcpy (int *,int *,int) ;
 int sha256_prf (int ,int,char*,int *,int,int ,int) ;

__attribute__((used)) static void
mesh_rsn_derive_aek(struct mesh_rsn *rsn, struct sta_info *sta)
{
 u8 *myaddr = rsn->wpa_s->own_addr;
 u8 *peer = sta->addr;
 u8 *addr1, *addr2;
 u8 context[RSN_SELECTOR_LEN + 2 * ETH_ALEN], *ptr = context;






 RSN_SELECTOR_PUT(ptr, RSN_AUTH_KEY_MGMT_SAE);
 ptr += RSN_SELECTOR_LEN;

 if (os_memcmp(myaddr, peer, ETH_ALEN) < 0) {
  addr1 = myaddr;
  addr2 = peer;
 } else {
  addr1 = peer;
  addr2 = myaddr;
 }
 os_memcpy(ptr, addr1, ETH_ALEN);
 ptr += ETH_ALEN;
 os_memcpy(ptr, addr2, ETH_ALEN);

 sha256_prf(sta->sae->pmk, sizeof(sta->sae->pmk), "AEK Derivation",
     context, sizeof(context), sta->aek, sizeof(sta->aek));
}
