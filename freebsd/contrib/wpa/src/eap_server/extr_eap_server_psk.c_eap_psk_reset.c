
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_psk_data {int id_p; } ;


 int bin_clear_free (struct eap_psk_data*,int) ;
 int os_free (int ) ;

__attribute__((used)) static void eap_psk_reset(struct eap_sm *sm, void *priv)
{
 struct eap_psk_data *data = priv;
 os_free(data->id_p);
 bin_clear_free(data, sizeof(*data));
}
