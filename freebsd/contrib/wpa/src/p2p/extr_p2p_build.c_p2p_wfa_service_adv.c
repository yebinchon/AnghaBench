
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2ps_advertisement {int svc_name; struct p2ps_advertisement* next; } ;
struct p2p_data {struct p2ps_advertisement* p2ps_adv_list; } ;


 int P2PS_WILD_HASH_STR ;
 int os_strlen (int ) ;
 scalar_t__ os_strncmp (int ,int ,int ) ;

__attribute__((used)) static int p2p_wfa_service_adv(struct p2p_data *p2p)
{
 struct p2ps_advertisement *adv;

 for (adv = p2p->p2ps_adv_list; adv; adv = adv->next) {
  if (os_strncmp(adv->svc_name, P2PS_WILD_HASH_STR,
          os_strlen(P2PS_WILD_HASH_STR)) == 0)
   return 1;
 }

 return 0;
}
