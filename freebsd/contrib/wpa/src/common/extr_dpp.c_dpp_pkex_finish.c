
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dpp_pkex {int * peer_bootstrap_key; TYPE_1__* own_bi; } ;
struct dpp_global {int bootstrap; } ;
struct dpp_bootstrap_info {int num_freq; unsigned int* freq; int list; int * pubkey; int curve; int mac_addr; int type; int id; } ;
struct TYPE_2__ {int curve; } ;


 int DPP_BOOTSTRAP_PKEX ;
 int ETH_ALEN ;
 int dl_list_add (int *,int *) ;
 int dpp_bootstrap_info_free (struct dpp_bootstrap_info*) ;
 scalar_t__ dpp_bootstrap_key_hash (struct dpp_bootstrap_info*) ;
 int dpp_next_id (struct dpp_global*) ;
 int dpp_pkex_free (struct dpp_pkex*) ;
 int os_memcpy (int ,int const*,int ) ;
 struct dpp_bootstrap_info* os_zalloc (int) ;

struct dpp_bootstrap_info *
dpp_pkex_finish(struct dpp_global *dpp, struct dpp_pkex *pkex, const u8 *peer,
  unsigned int freq)
{
 struct dpp_bootstrap_info *bi;

 bi = os_zalloc(sizeof(*bi));
 if (!bi)
  return ((void*)0);
 bi->id = dpp_next_id(dpp);
 bi->type = DPP_BOOTSTRAP_PKEX;
 os_memcpy(bi->mac_addr, peer, ETH_ALEN);
 bi->num_freq = 1;
 bi->freq[0] = freq;
 bi->curve = pkex->own_bi->curve;
 bi->pubkey = pkex->peer_bootstrap_key;
 pkex->peer_bootstrap_key = ((void*)0);
 if (dpp_bootstrap_key_hash(bi) < 0) {
  dpp_bootstrap_info_free(bi);
  return ((void*)0);
 }
 dpp_pkex_free(pkex);
 dl_list_add(&dpp->bootstrap, &bi->list);
 return bi;
}
