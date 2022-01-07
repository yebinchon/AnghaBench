
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int aaaEapKeyDataLen; int aaaEapKeyData; int aaaEapRespData; int aaaEapReqData; int eapRespData; struct eap_sm* eapSessionId; int eapKeyDataLen; int eapKeyData; int eapReqData; } ;
struct eap_sm {int assoc_p2p_ie; int assoc_wps_ie; int user; TYPE_2__ eap_if; struct eap_sm* eap_fast_a_id_info; struct eap_sm* eap_fast_a_id; struct eap_sm* pac_opaque_encr_key; struct eap_sm* serial_num; struct eap_sm* identity; int lastReqData; scalar_t__ eap_method_priv; TYPE_1__* m; } ;
struct TYPE_3__ {int (* reset ) (struct eap_sm*,scalar_t__) ;} ;


 int MSG_DEBUG ;
 int bin_clear_free (int ,int ) ;
 int eap_user_free (int ) ;
 int os_free (struct eap_sm*) ;
 int stub1 (struct eap_sm*,scalar_t__) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (int ) ;

void eap_server_sm_deinit(struct eap_sm *sm)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "EAP: Server state machine removed");
 if (sm->m && sm->eap_method_priv)
  sm->m->reset(sm, sm->eap_method_priv);
 wpabuf_free(sm->eap_if.eapReqData);
 bin_clear_free(sm->eap_if.eapKeyData, sm->eap_if.eapKeyDataLen);
 os_free(sm->eap_if.eapSessionId);
 wpabuf_free(sm->lastReqData);
 wpabuf_free(sm->eap_if.eapRespData);
 os_free(sm->identity);
 os_free(sm->serial_num);
 os_free(sm->pac_opaque_encr_key);
 os_free(sm->eap_fast_a_id);
 os_free(sm->eap_fast_a_id_info);
 wpabuf_free(sm->eap_if.aaaEapReqData);
 wpabuf_free(sm->eap_if.aaaEapRespData);
 bin_clear_free(sm->eap_if.aaaEapKeyData, sm->eap_if.aaaEapKeyDataLen);
 eap_user_free(sm->user);
 wpabuf_free(sm->assoc_wps_ie);
 wpabuf_free(sm->assoc_p2p_ie);
 os_free(sm);
}
