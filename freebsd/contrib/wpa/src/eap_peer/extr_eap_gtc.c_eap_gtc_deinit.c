
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_gtc_data {int dummy; } ;


 int os_free (struct eap_gtc_data*) ;

__attribute__((used)) static void eap_gtc_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_gtc_data *data = priv;
 os_free(data);
}
