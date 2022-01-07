
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tls_data {int * key_data; } ;
struct eap_sm {int dummy; } ;
typedef int Boolean ;



__attribute__((used)) static Boolean eap_tls_isKeyAvailable(struct eap_sm *sm, void *priv)
{
 struct eap_tls_data *data = priv;
 return data->key_data != ((void*)0);
}
