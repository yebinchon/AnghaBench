
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_pending {int dummy; } ;
struct eap_sim_db_data {int dummy; } ;


 int eap_sim_db_del_timeout ;
 int eap_sim_db_query_timeout ;
 int eloop_cancel_timeout (int ,struct eap_sim_db_data*,struct eap_sim_db_pending*) ;
 int os_free (struct eap_sim_db_pending*) ;

__attribute__((used)) static void eap_sim_db_free_pending(struct eap_sim_db_data *data,
        struct eap_sim_db_pending *entry)
{
 eloop_cancel_timeout(eap_sim_db_query_timeout, data, entry);
 eloop_cancel_timeout(eap_sim_db_del_timeout, data, entry);
 os_free(entry);
}
