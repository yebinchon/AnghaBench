
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_aka_data {scalar_t__ num_notification; scalar_t__ num_id_req; } ;


 int CONTINUE ;
 int eap_aka_state (struct eap_aka_data*,int ) ;

__attribute__((used)) static void * eap_aka_init_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_aka_data *data = priv;
 data->num_id_req = 0;
 data->num_notification = 0;
 eap_aka_state(data, CONTINUE);
 return priv;
}
