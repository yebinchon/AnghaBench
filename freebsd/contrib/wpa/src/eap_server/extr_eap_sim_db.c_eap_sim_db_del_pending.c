
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_pending {struct eap_sim_db_pending* next; } ;
struct eap_sim_db_data {struct eap_sim_db_pending* pending; } ;


 int eap_sim_db_free_pending (struct eap_sim_db_data*,struct eap_sim_db_pending*) ;

__attribute__((used)) static void eap_sim_db_del_pending(struct eap_sim_db_data *data,
       struct eap_sim_db_pending *entry)
{
 struct eap_sim_db_pending **pp = &data->pending;

 while (*pp != ((void*)0)) {
  if (*pp == entry) {
   *pp = entry->next;
   eap_sim_db_free_pending(data, entry);
   return;
  }
  pp = &(*pp)->next;
 }
}
