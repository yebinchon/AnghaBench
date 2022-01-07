
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_data {int success; } ;
struct eap_sm {int dummy; } ;
typedef int Boolean ;



__attribute__((used)) static Boolean eap_teap_isKeyAvailable(struct eap_sm *sm, void *priv)
{
 struct eap_teap_data *data = priv;

 return data->success;
}
