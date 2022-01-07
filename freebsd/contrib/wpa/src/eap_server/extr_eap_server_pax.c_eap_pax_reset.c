
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_pax_data {int cid; } ;


 int bin_clear_free (struct eap_pax_data*,int) ;
 int os_free (int ) ;

__attribute__((used)) static void eap_pax_reset(struct eap_sm *sm, void *priv)
{
 struct eap_pax_data *data = priv;
 os_free(data->cid);
 bin_clear_free(data, sizeof(*data));
}
