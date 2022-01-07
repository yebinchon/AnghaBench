
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_reauth {struct eap_sim_reauth* next; } ;
struct eap_sim_pseudonym {struct eap_sim_pseudonym* next; } ;
struct eap_sim_db_pending {struct eap_sim_db_pending* next; } ;
struct eap_sim_db_data {struct eap_sim_db_pending* pending; struct eap_sim_reauth* reauths; struct eap_sim_pseudonym* pseudonyms; struct eap_sim_db_data* fname; int * sqlite_db; } ;


 int eap_sim_db_close_socket (struct eap_sim_db_data*) ;
 int eap_sim_db_free_pending (struct eap_sim_db_data*,struct eap_sim_db_pending*) ;
 int eap_sim_db_free_pseudonym (struct eap_sim_pseudonym*) ;
 int eap_sim_db_free_reauth (struct eap_sim_reauth*) ;
 int os_free (struct eap_sim_db_data*) ;
 int sqlite3_close (int *) ;

void eap_sim_db_deinit(void *priv)
{
 struct eap_sim_db_data *data = priv;
 struct eap_sim_pseudonym *p, *prev;
 struct eap_sim_reauth *r, *prevr;
 struct eap_sim_db_pending *pending, *prev_pending;
 eap_sim_db_close_socket(data);
 os_free(data->fname);

 p = data->pseudonyms;
 while (p) {
  prev = p;
  p = p->next;
  eap_sim_db_free_pseudonym(prev);
 }

 r = data->reauths;
 while (r) {
  prevr = r;
  r = r->next;
  eap_sim_db_free_reauth(prevr);
 }

 pending = data->pending;
 while (pending) {
  prev_pending = pending;
  pending = pending->next;
  eap_sim_db_free_pending(data, prev_pending);
 }

 os_free(data);
}
