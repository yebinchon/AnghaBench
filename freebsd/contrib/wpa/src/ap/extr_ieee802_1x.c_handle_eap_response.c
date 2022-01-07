
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {struct eapol_state_machine* eapol_sm; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {int eapolEap; TYPE_1__* eap_if; int dot1xAuthEapolRespFramesRx; int addr; int eap_type_supp; } ;
struct eap_hdr {int length; int identifier; int code; } ;
struct TYPE_2__ {int eapRespData; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_IEEE8021X ;
 int MSG_INFO ;
 int TRUE ;
 int be_to_host16 (int ) ;
 int eap_server_get_name (int ,int ) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,int ,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_alloc_copy (struct eap_hdr*,size_t) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void handle_eap_response(struct hostapd_data *hapd,
    struct sta_info *sta, struct eap_hdr *eap,
    size_t len)
{
 u8 type, *data;
 struct eapol_state_machine *sm = sta->eapol_sm;
 if (sm == ((void*)0))
  return;

 data = (u8 *) (eap + 1);

 if (len < sizeof(*eap) + 1) {
  wpa_printf(MSG_INFO, "handle_eap_response: too short response data");
  return;
 }

 sm->eap_type_supp = type = data[0];

 hostapd_logger(hapd, sm->addr, HOSTAPD_MODULE_IEEE8021X,
         HOSTAPD_LEVEL_DEBUG, "received EAP packet (code=%d "
         "id=%d len=%d) from STA: EAP Response-%s (%d)",
         eap->code, eap->identifier, be_to_host16(eap->length),
         eap_server_get_name(0, type), type);

 sm->dot1xAuthEapolRespFramesRx++;

 wpabuf_free(sm->eap_if->eapRespData);
 sm->eap_if->eapRespData = wpabuf_alloc_copy(eap, len);
 sm->eapolEap = TRUE;
}
