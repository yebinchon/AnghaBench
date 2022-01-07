
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sim_data {int next_reauth_id; int next_pseudonym; } ;


 int bin_clear_free (struct eap_sim_data*,int) ;
 int os_free (int ) ;

__attribute__((used)) static void eap_sim_reset(struct eap_sm *sm, void *priv)
{
 struct eap_sim_data *data = priv;
 os_free(data->next_pseudonym);
 os_free(data->next_reauth_id);
 bin_clear_free(data, sizeof(*data));
}
