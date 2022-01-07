
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_fast_data {int success; } ;
typedef int Boolean ;



__attribute__((used)) static Boolean eap_fast_isKeyAvailable(struct eap_sm *sm, void *priv)
{
 struct eap_fast_data *data = priv;
 return data->success;
}
