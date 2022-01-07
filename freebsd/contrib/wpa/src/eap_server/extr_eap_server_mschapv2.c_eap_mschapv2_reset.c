
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_mschapv2_data {int peer_challenge; } ;


 int bin_clear_free (struct eap_mschapv2_data*,int) ;
 int os_free (int ) ;

__attribute__((used)) static void eap_mschapv2_reset(struct eap_sm *sm, void *priv)
{
 struct eap_mschapv2_data *data = priv;
 if (data == ((void*)0))
  return;

 os_free(data->peer_challenge);
 bin_clear_free(data, sizeof(*data));
}
