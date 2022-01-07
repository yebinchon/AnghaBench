
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tls_data {int eap_type; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; int methodState; } ;


 int DECISION_FAIL ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 struct wpabuf* eap_peer_tls_build_ack (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_tls_failure(struct eap_sm *sm,
           struct eap_tls_data *data,
           struct eap_method_ret *ret, int res,
           struct wpabuf *resp, u8 id)
{
 wpa_printf(MSG_DEBUG, "EAP-TLS: TLS processing failed");

 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_FAIL;

 if (resp) {




  return resp;
 }

 return eap_peer_tls_build_ack(id, data->eap_type, 0);
}
