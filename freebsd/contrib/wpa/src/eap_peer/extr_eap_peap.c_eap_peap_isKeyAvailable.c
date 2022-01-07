
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ phase2_success; int * key_data; } ;
typedef int Boolean ;



__attribute__((used)) static Boolean eap_peap_isKeyAvailable(struct eap_sm *sm, void *priv)
{
 struct eap_peap_data *data = priv;
 return data->key_data != ((void*)0) && data->phase2_success;
}
