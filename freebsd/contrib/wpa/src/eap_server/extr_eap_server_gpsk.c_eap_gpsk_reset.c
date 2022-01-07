
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_gpsk_data {int id_peer; } ;


 int bin_clear_free (struct eap_gpsk_data*,int) ;
 int os_free (int ) ;

__attribute__((used)) static void eap_gpsk_reset(struct eap_sm *sm, void *priv)
{
 struct eap_gpsk_data *data = priv;
 os_free(data->id_peer);
 bin_clear_free(data, sizeof(*data));
}
