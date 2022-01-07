
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct p2ps_advertisement {scalar_t__ id; struct p2ps_advertisement* next; } ;
struct p2p_data {struct p2ps_advertisement* p2ps_adv_list; } ;


 int os_free (struct p2ps_advertisement*) ;
 int p2p_dbg (struct p2p_data*,char*,scalar_t__) ;

int p2p_service_del_asp(struct p2p_data *p2p, u32 adv_id)
{
 struct p2ps_advertisement *adv_data;
 struct p2ps_advertisement **prior;

 if (!p2p)
  return -1;

 adv_data = p2p->p2ps_adv_list;
 prior = &p2p->p2ps_adv_list;
 while (adv_data) {
  if (adv_data->id == adv_id) {
   p2p_dbg(p2p, "Delete ASP adv_id=0x%x", adv_id);
   *prior = adv_data->next;
   os_free(adv_data);
   return 0;
  }
  prior = &adv_data->next;
  adv_data = adv_data->next;
 }

 return -1;
}
