
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_vendor_test_data {int dummy; } ;
struct eap_sm {int dummy; } ;


 int os_free (struct eap_vendor_test_data*) ;

__attribute__((used)) static void eap_vendor_test_reset(struct eap_sm *sm, void *priv)
{
 struct eap_vendor_test_data *data = priv;
 os_free(data);
}
