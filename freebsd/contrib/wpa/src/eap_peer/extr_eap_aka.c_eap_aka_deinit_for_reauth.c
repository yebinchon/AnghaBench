
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_aka_data {int prev_id; scalar_t__ kdf_negotiation; scalar_t__ use_result_ind; int * id_msgs; } ;


 int CLEAR_EAP_ID ;
 int eap_aka_clear_identities (struct eap_sm*,struct eap_aka_data*,int ) ;
 int eap_aka_clear_keys (struct eap_aka_data*,int) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static void eap_aka_deinit_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_aka_data *data = priv;
 eap_aka_clear_identities(sm, data, CLEAR_EAP_ID);
 data->prev_id = -1;
 wpabuf_free(data->id_msgs);
 data->id_msgs = ((void*)0);
 data->use_result_ind = 0;
 data->kdf_negotiation = 0;
 eap_aka_clear_keys(data, 1);
}
