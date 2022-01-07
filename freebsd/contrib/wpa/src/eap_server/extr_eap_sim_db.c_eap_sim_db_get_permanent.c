
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_pseudonym {char const* permanent; struct eap_sim_pseudonym* next; int pseudonym; } ;
struct eap_sim_db_data {struct eap_sim_pseudonym* pseudonyms; scalar_t__ sqlite_db; } ;


 char const* db_get_pseudonym (struct eap_sim_db_data*,char const*) ;
 scalar_t__ os_strcmp (int ,char const*) ;

const char *
eap_sim_db_get_permanent(struct eap_sim_db_data *data, const char *pseudonym)
{
 struct eap_sim_pseudonym *p;






 p = data->pseudonyms;
 while (p) {
  if (os_strcmp(p->pseudonym, pseudonym) == 0)
   return p->permanent;
  p = p->next;
 }

 return ((void*)0);
}
