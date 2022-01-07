
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sake_data {int peerid; int serverid; } ;


 int bin_clear_free (struct eap_sake_data*,int) ;
 int os_free (int ) ;

__attribute__((used)) static void eap_sake_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_sake_data *data = priv;
 os_free(data->serverid);
 os_free(data->peerid);
 bin_clear_free(data, sizeof(*data));
}
