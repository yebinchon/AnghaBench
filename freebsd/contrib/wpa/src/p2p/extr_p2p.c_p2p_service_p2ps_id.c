
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct p2ps_advertisement {scalar_t__ id; struct p2ps_advertisement* next; } ;
struct p2p_data {struct p2ps_advertisement* p2ps_adv_list; } ;



struct p2ps_advertisement *
p2p_service_p2ps_id(struct p2p_data *p2p, u32 adv_id)
{
 struct p2ps_advertisement *adv_data;

 if (!p2p)
  return ((void*)0);

 adv_data = p2p->p2ps_adv_list;
 while (adv_data) {
  if (adv_data->id == adv_id)
   return adv_data;
  adv_data = adv_data->next;
 }

 return ((void*)0);
}
