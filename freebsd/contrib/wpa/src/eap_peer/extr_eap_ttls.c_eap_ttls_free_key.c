
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ttls_data {int * key_data; } ;


 scalar_t__ EAP_EMSK_LEN ;
 scalar_t__ EAP_TLS_KEY_LEN ;
 int bin_clear_free (int *,scalar_t__) ;

__attribute__((used)) static void eap_ttls_free_key(struct eap_ttls_data *data)
{
 if (data->key_data) {
  bin_clear_free(data->key_data, EAP_TLS_KEY_LEN + EAP_EMSK_LEN);
  data->key_data = ((void*)0);
 }
}
