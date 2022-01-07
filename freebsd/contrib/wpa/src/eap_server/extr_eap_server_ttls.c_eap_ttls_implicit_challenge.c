
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_ttls_data {int ssl; } ;
struct eap_sm {int dummy; } ;


 int * eap_server_tls_derive_key (struct eap_sm*,int *,char*,int *,int ,size_t) ;

__attribute__((used)) static u8 * eap_ttls_implicit_challenge(struct eap_sm *sm,
     struct eap_ttls_data *data, size_t len)
{
 return eap_server_tls_derive_key(sm, &data->ssl, "ttls challenge",
      ((void*)0), 0, len);
}
