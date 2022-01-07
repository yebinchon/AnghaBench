
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_aka_data {int network_name; int id_msgs; int next_reauth_id; int next_pseudonym; } ;


 int bin_clear_free (struct eap_aka_data*,int) ;
 int os_free (int ) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_aka_reset(struct eap_sm *sm, void *priv)
{
 struct eap_aka_data *data = priv;
 os_free(data->next_pseudonym);
 os_free(data->next_reauth_id);
 wpabuf_free(data->id_msgs);
 os_free(data->network_name);
 bin_clear_free(data, sizeof(*data));
}
