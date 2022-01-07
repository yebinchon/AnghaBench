
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int conn; } ;
struct eap_ttls_data {int phase2_success; int ttls_version; TYPE_1__ ssl; scalar_t__ reauth; scalar_t__ phase2_start; } ;
struct eap_sm {int ssl_ctx; } ;
struct eap_method_ret {int decision; int methodState; } ;


 int DECISION_UNCOND_SUCC ;
 int EAP_TYPE_TTLS ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 struct wpabuf* eap_peer_tls_build_ack (int ,int ,int ) ;
 int eap_ttls_implicit_identity_request (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int ,struct wpabuf**) ;
 scalar_t__ tls_connection_resumed (int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_ttls_phase2_start(struct eap_sm *sm, struct eap_ttls_data *data,
     struct eap_method_ret *ret, u8 identifier,
     struct wpabuf **out_data)
{
 data->phase2_start = 0;
 if (data->reauth &&
     tls_connection_resumed(sm->ssl_ctx, data->ssl.conn)) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: Session resumption - "
      "skip phase 2");
  *out_data = eap_peer_tls_build_ack(identifier, EAP_TYPE_TTLS,
         data->ttls_version);
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_UNCOND_SUCC;
  data->phase2_success = 1;
  return 0;
 }

 return eap_ttls_implicit_identity_request(sm, data, ret, identifier,
        out_data);
}
