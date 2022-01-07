
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct eapol_sm {int dot1xSuppEapolFramesTx; int dot1xSuppEapolRespFramesTx; int dot1xSuppEapolReqFramesRx; int dot1xSuppEapolReqIdFramesRx; scalar_t__ initial_req; TYPE_1__* ctx; int eap; int eap_proxy; scalar_t__ use_eap_proxy; } ;
struct TYPE_2__ {int eapol_send_ctx; int (* eapol_send ) (int ,int ,int ,int ) ;} ;


 int IEEE802_1X_TYPE_EAP_PACKET ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 struct wpabuf* eap_get_eapRespData (int ) ;
 struct wpabuf* eap_proxy_get_eapRespData (int ) ;
 int stub1 (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void eapol_sm_txSuppRsp(struct eapol_sm *sm)
{
 struct wpabuf *resp;

 wpa_printf(MSG_DEBUG, "EAPOL: txSuppRsp");
 resp = eap_get_eapRespData(sm->eap);
 if (resp == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAPOL: txSuppRsp - EAP response data "
      "not available");
  return;
 }


 sm->ctx->eapol_send(sm->ctx->eapol_send_ctx,
       IEEE802_1X_TYPE_EAP_PACKET, wpabuf_head(resp),
       wpabuf_len(resp));


 wpabuf_free(resp);

 if (sm->initial_req)
  sm->dot1xSuppEapolReqIdFramesRx++;
 else
  sm->dot1xSuppEapolReqFramesRx++;
 sm->dot1xSuppEapolRespFramesTx++;
 sm->dot1xSuppEapolFramesTx++;
}
