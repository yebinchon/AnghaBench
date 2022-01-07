
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_fast_data {int success; int emsk; int simck; int key_data; } ;


 scalar_t__ eap_fast_derive_eap_emsk (int ,int ) ;
 scalar_t__ eap_fast_derive_eap_msk (int ,int ) ;

__attribute__((used)) static int eap_fast_derive_msk(struct eap_fast_data *data)
{
 if (eap_fast_derive_eap_msk(data->simck, data->key_data) < 0 ||
     eap_fast_derive_eap_emsk(data->simck, data->emsk) < 0)
  return -1;
 data->success = 1;
 return 0;
}
