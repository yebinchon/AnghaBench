
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_reauth {struct eap_sim_reauth* next; } ;
struct eap_sim_db_data {struct eap_sim_reauth* reauths; scalar_t__ sqlite_db; } ;


 int db_remove_reauth (struct eap_sim_db_data*,struct eap_sim_reauth*) ;
 int eap_sim_db_free_reauth (struct eap_sim_reauth*) ;

void eap_sim_db_remove_reauth(struct eap_sim_db_data *data,
         struct eap_sim_reauth *reauth)
{
 struct eap_sim_reauth *r, *prev = ((void*)0);






 r = data->reauths;
 while (r) {
  if (r == reauth) {
   if (prev)
    prev->next = r->next;
   else
    data->reauths = r->next;
   eap_sim_db_free_reauth(r);
   return;
  }
  prev = r;
  r = r->next;
 }
}
