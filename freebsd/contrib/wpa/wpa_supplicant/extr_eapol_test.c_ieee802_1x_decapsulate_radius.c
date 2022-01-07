
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct radius_msg {int dummy; } ;
struct ieee802_1x_hdr {int length; int type; int version; } ;
struct eapol_test_data {TYPE_1__* wpa_s; struct wpabuf* last_eap_radius; int ctrl_iface; struct radius_msg* last_recv_radius; } ;
struct eap_hdr {int code; int length; int identifier; } ;
typedef int buf ;
struct TYPE_2__ {int bssid; int eapol; } ;


 int EAPOL_VERSION ;




 int IEEE802_1X_TYPE_EAP_PACKET ;
 int MSG_DEBUG ;
 int assert (int ) ;
 char* eap_type_text (int) ;
 int eapol_sm_rx_eapol (int ,int ,int *,int) ;
 int eloop_terminate () ;
 int htons (int) ;
 int ntohs (int ) ;
 int os_free (struct ieee802_1x_hdr*) ;
 struct ieee802_1x_hdr* os_malloc (int) ;
 int os_memcpy (int *,struct eap_hdr*,int) ;
 int os_snprintf (char*,int,char*,char*,int) ;
 int os_strlcpy (char*,char*,int) ;
 struct wpabuf* radius_msg_get_eap (struct radius_msg*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 struct eap_hdr* wpabuf_head (struct wpabuf*) ;
 int* wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void ieee802_1x_decapsulate_radius(struct eapol_test_data *e)
{
 struct wpabuf *eap;
 const struct eap_hdr *hdr;
 int eap_type = -1;
 char buf[64];
 struct radius_msg *msg;

 if (e->last_recv_radius == ((void*)0))
  return;

 msg = e->last_recv_radius;

 eap = radius_msg_get_eap(msg);
 if (eap == ((void*)0)) {



  wpa_printf(MSG_DEBUG, "could not extract "
          "EAP-Message from RADIUS message");
  wpabuf_free(e->last_eap_radius);
  e->last_eap_radius = ((void*)0);
  return;
 }

 if (wpabuf_len(eap) < sizeof(*hdr)) {
  wpa_printf(MSG_DEBUG, "too short EAP packet "
          "received from authentication server");
  wpabuf_free(eap);
  return;
 }

 if (wpabuf_len(eap) > sizeof(*hdr))
  eap_type = (wpabuf_head_u8(eap))[sizeof(*hdr)];

 hdr = wpabuf_head(eap);
 switch (hdr->code) {
 case 130:
  os_snprintf(buf, sizeof(buf), "EAP-Request-%s (%d)",
       eap_type >= 0 ? eap_type_text(eap_type) : "??",
       eap_type);
  break;
 case 129:
  os_snprintf(buf, sizeof(buf), "EAP Response-%s (%d)",
       eap_type >= 0 ? eap_type_text(eap_type) : "??",
       eap_type);
  break;
 case 128:
  os_strlcpy(buf, "EAP Success", sizeof(buf));


  break;
 case 131:
  os_strlcpy(buf, "EAP Failure", sizeof(buf));
  if (e->ctrl_iface)
   break;
  eloop_terminate();
  break;
 default:
  os_strlcpy(buf, "unknown EAP code", sizeof(buf));
  wpa_hexdump_buf(MSG_DEBUG, "Decapsulated EAP packet", eap);
  break;
 }
 wpa_printf(MSG_DEBUG, "decapsulated EAP packet (code=%d "
         "id=%d len=%d) from RADIUS server: %s",
        hdr->code, hdr->identifier, ntohs(hdr->length), buf);



 wpabuf_free(e->last_eap_radius);
 e->last_eap_radius = eap;

 {
  struct ieee802_1x_hdr *dot1x;
  dot1x = os_malloc(sizeof(*dot1x) + wpabuf_len(eap));
  assert(dot1x != ((void*)0));
  dot1x->version = EAPOL_VERSION;
  dot1x->type = IEEE802_1X_TYPE_EAP_PACKET;
  dot1x->length = htons(wpabuf_len(eap));
  os_memcpy((u8 *) (dot1x + 1), wpabuf_head(eap),
     wpabuf_len(eap));
  eapol_sm_rx_eapol(e->wpa_s->eapol, e->wpa_s->bssid,
      (u8 *) dot1x,
      sizeof(*dot1x) + wpabuf_len(eap));
  os_free(dot1x);
 }
}
