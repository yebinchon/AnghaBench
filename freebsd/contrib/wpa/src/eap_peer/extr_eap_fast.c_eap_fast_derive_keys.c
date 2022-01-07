
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_fast_data {scalar_t__ anon_provisioning; } ;


 int eap_fast_derive_key_auth (struct eap_sm*,struct eap_fast_data*) ;
 int eap_fast_derive_key_provisioning (struct eap_sm*,struct eap_fast_data*) ;

__attribute__((used)) static int eap_fast_derive_keys(struct eap_sm *sm, struct eap_fast_data *data)
{
 int res;

 if (data->anon_provisioning)
  res = eap_fast_derive_key_provisioning(sm, data);
 else
  res = eap_fast_derive_key_auth(sm, data);
 return res;
}
