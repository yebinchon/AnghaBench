
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_reauth {struct eap_sim_reauth* next; int reauth_id; } ;
struct eap_sim_db_data {struct eap_sim_reauth* reauths; scalar_t__ sqlite_db; } ;


 struct eap_sim_reauth* db_get_reauth (struct eap_sim_db_data*,char const*) ;
 scalar_t__ os_strcmp (int ,char const*) ;

struct eap_sim_reauth *
eap_sim_db_get_reauth_entry(struct eap_sim_db_data *data,
       const char *reauth_id)
{
 struct eap_sim_reauth *r;






 r = data->reauths;
 while (r) {
  if (os_strcmp(r->reauth_id, reauth_id) == 0)
   break;
  r = r->next;
 }

 return r;
}
