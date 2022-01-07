
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_pending {struct eap_sim_db_pending* next; } ;
struct eap_sim_db_data {struct eap_sim_db_pending* pending; } ;



__attribute__((used)) static void eap_sim_db_add_pending(struct eap_sim_db_data *data,
       struct eap_sim_db_pending *entry)
{
 entry->next = data->pending;
 data->pending = entry;
}
