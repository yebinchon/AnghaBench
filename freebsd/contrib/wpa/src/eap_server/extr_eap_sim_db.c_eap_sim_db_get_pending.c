
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_pending {int aka; struct eap_sim_db_pending* next; int imsi; } ;
struct eap_sim_db_data {struct eap_sim_db_pending* pending; } ;


 scalar_t__ os_strcmp (int ,char const*) ;

__attribute__((used)) static struct eap_sim_db_pending *
eap_sim_db_get_pending(struct eap_sim_db_data *data, const char *imsi, int aka)
{
 struct eap_sim_db_pending *entry, *prev = ((void*)0);

 entry = data->pending;
 while (entry) {
  if (entry->aka == aka && os_strcmp(entry->imsi, imsi) == 0) {
   if (prev)
    prev->next = entry->next;
   else
    data->pending = entry->next;
   break;
  }
  prev = entry;
  entry = entry->next;
 }
 return entry;
}
