
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_gpsk_data {scalar_t__ psk; int psk_len; scalar_t__ id_peer; scalar_t__ id_server; } ;


 int bin_clear_free (struct eap_gpsk_data*,int) ;
 int os_free (scalar_t__) ;
 int os_memset (scalar_t__,int ,int ) ;

__attribute__((used)) static void eap_gpsk_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_gpsk_data *data = priv;
 os_free(data->id_server);
 os_free(data->id_peer);
 if (data->psk) {
  os_memset(data->psk, 0, data->psk_len);
  os_free(data->psk);
 }
 bin_clear_free(data, sizeof(*data));
}
