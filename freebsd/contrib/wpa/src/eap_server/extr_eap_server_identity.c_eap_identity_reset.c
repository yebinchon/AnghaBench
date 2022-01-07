
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_identity_data {int dummy; } ;


 int os_free (struct eap_identity_data*) ;

__attribute__((used)) static void eap_identity_reset(struct eap_sm *sm, void *priv)
{
 struct eap_identity_data *data = priv;
 os_free(data);
}
