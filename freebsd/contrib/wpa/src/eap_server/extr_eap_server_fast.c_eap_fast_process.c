
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {int ssl; } ;


 int EAP_TYPE_FAST ;
 int FAILURE ;
 int eap_fast_process_msg ;
 int eap_fast_process_version ;
 int eap_fast_state (struct eap_fast_data*,int ) ;
 scalar_t__ eap_server_tls_process (struct eap_sm*,int *,struct wpabuf*,struct eap_fast_data*,int ,int ,int ) ;

__attribute__((used)) static void eap_fast_process(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_fast_data *data = priv;
 if (eap_server_tls_process(sm, &data->ssl, respData, data,
       EAP_TYPE_FAST, eap_fast_process_version,
       eap_fast_process_msg) < 0)
  eap_fast_state(data, FAILURE);
}
