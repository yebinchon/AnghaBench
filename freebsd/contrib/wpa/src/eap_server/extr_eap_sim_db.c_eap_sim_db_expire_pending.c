
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_pending {int dummy; } ;
struct eap_sim_db_data {int eap_sim_db_timeout; } ;


 int eap_sim_db_query_timeout ;
 int eloop_register_timeout (int ,int ,int ,struct eap_sim_db_data*,struct eap_sim_db_pending*) ;

__attribute__((used)) static void eap_sim_db_expire_pending(struct eap_sim_db_data *data,
          struct eap_sim_db_pending *entry)
{
 eloop_register_timeout(data->eap_sim_db_timeout, 0,
          eap_sim_db_query_timeout, data, entry);
}
