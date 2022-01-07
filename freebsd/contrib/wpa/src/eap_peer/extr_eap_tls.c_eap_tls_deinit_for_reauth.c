
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tls_data {int * pending_resp; } ;
struct eap_sm {int dummy; } ;


 int wpabuf_free (int *) ;

__attribute__((used)) static void eap_tls_deinit_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_tls_data *data = priv;

 wpabuf_free(data->pending_resp);
 data->pending_resp = ((void*)0);
}
