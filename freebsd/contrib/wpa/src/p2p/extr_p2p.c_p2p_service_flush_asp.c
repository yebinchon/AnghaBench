
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2ps_advertisement {struct p2ps_advertisement* next; } ;
struct p2p_data {struct p2ps_advertisement* p2ps_adv_list; } ;


 int os_free (struct p2ps_advertisement*) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2ps_prov_free (struct p2p_data*) ;

void p2p_service_flush_asp(struct p2p_data *p2p)
{
 struct p2ps_advertisement *adv, *prev;

 if (!p2p)
  return;

 adv = p2p->p2ps_adv_list;
 while (adv) {
  prev = adv;
  adv = adv->next;
  os_free(prev);
 }

 p2p->p2ps_adv_list = ((void*)0);
 p2ps_prov_free(p2p);
 p2p_dbg(p2p, "All ASP advertisements flushed");
}
