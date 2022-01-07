
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct sta_info {int addr; struct eapol_state_machine* eapol_sm; } ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {int eap_type_authsrv; TYPE_1__* eap_if; struct radius_msg* last_recv_radius; } ;
struct eap_hdr {int code; int length; int identifier; } ;
typedef int buf ;
struct TYPE_2__ {struct wpabuf* aaaEapReqData; void* aaaEapReq; void* aaaEapNoReq; } ;






 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_LEVEL_WARNING ;
 int HOSTAPD_MODULE_IEEE8021X ;
 void* TRUE ;
 int be_to_host16 (int ) ;
 int eap_server_get_name (int ,int) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,...) ;
 int os_snprintf (char*,int,char*,int ,int) ;
 int os_strlcpy (char*,char*,int) ;
 struct wpabuf* radius_msg_get_eap (struct radius_msg*) ;
 int wpabuf_free (struct wpabuf*) ;
 struct eap_hdr* wpabuf_head (struct wpabuf*) ;
 int* wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void ieee802_1x_decapsulate_radius(struct hostapd_data *hapd,
       struct sta_info *sta)
{
 struct wpabuf *eap;
 const struct eap_hdr *hdr;
 int eap_type = -1;
 char buf[64];
 struct radius_msg *msg;
 struct eapol_state_machine *sm = sta->eapol_sm;

 if (sm == ((void*)0) || sm->last_recv_radius == ((void*)0)) {
  if (sm)
   sm->eap_if->aaaEapNoReq = TRUE;
  return;
 }

 msg = sm->last_recv_radius;

 eap = radius_msg_get_eap(msg);
 if (eap == ((void*)0)) {



  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE8021X,
          HOSTAPD_LEVEL_WARNING, "could not extract "
          "EAP-Message from RADIUS message");
  sm->eap_if->aaaEapNoReq = TRUE;
  return;
 }

 if (wpabuf_len(eap) < sizeof(*hdr)) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE8021X,
          HOSTAPD_LEVEL_WARNING, "too short EAP packet "
          "received from authentication server");
  wpabuf_free(eap);
  sm->eap_if->aaaEapNoReq = TRUE;
  return;
 }

 if (wpabuf_len(eap) > sizeof(*hdr))
  eap_type = (wpabuf_head_u8(eap))[sizeof(*hdr)];

 hdr = wpabuf_head(eap);
 switch (hdr->code) {
 case 130:
  if (eap_type >= 0)
   sm->eap_type_authsrv = eap_type;
  os_snprintf(buf, sizeof(buf), "EAP-Request-%s (%d)",
       eap_server_get_name(0, eap_type), eap_type);
  break;
 case 129:
  os_snprintf(buf, sizeof(buf), "EAP Response-%s (%d)",
       eap_server_get_name(0, eap_type), eap_type);
  break;
 case 128:
  os_strlcpy(buf, "EAP Success", sizeof(buf));
  break;
 case 131:
  os_strlcpy(buf, "EAP Failure", sizeof(buf));
  break;
 default:
  os_strlcpy(buf, "unknown EAP code", sizeof(buf));
  break;
 }
 buf[sizeof(buf) - 1] = '\0';
 hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE8021X,
         HOSTAPD_LEVEL_DEBUG, "decapsulated EAP packet (code=%d "
         "id=%d len=%d) from RADIUS server: %s",
         hdr->code, hdr->identifier, be_to_host16(hdr->length),
         buf);
 sm->eap_if->aaaEapReq = TRUE;

 wpabuf_free(sm->eap_if->aaaEapReqData);
 sm->eap_if->aaaEapReqData = eap;
}
