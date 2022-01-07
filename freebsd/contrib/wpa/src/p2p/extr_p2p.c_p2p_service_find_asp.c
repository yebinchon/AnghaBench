
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2ps_advertisement {struct p2ps_advertisement* next; int svc_name; int hash; } ;
struct p2p_data {struct p2ps_advertisement* p2ps_adv_list; int wild_card_hash; } ;


 int P2PS_HASH_LEN ;
 int P2PS_WILD_HASH_STR ;
 scalar_t__ os_memcmp (int const*,int ,int ) ;
 int os_strlen (int ) ;
 scalar_t__ os_strncmp (int ,int ,int ) ;
 int p2p_dbg (struct p2p_data*,char*,struct p2ps_advertisement*) ;

__attribute__((used)) static int p2p_service_find_asp(struct p2p_data *p2p, const u8 *hash)
{
 struct p2ps_advertisement *adv_data;
 int any_wfa;

 p2p_dbg(p2p, "ASP find - ASP list: %p", p2p->p2ps_adv_list);


 any_wfa = os_memcmp(hash, p2p->wild_card_hash, P2PS_HASH_LEN) == 0;

 adv_data = p2p->p2ps_adv_list;
 while (adv_data) {
  if (os_memcmp(hash, adv_data->hash, P2PS_HASH_LEN) == 0)
   return 1;
  if (any_wfa &&
      os_strncmp(adv_data->svc_name, P2PS_WILD_HASH_STR,
          os_strlen(P2PS_WILD_HASH_STR)) == 0)
   return 1;
  adv_data = adv_data->next;
 }

 return 0;
}
