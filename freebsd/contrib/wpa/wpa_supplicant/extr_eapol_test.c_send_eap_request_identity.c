
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int bssid; int eapol; } ;
struct ieee802_1x_hdr {void* length; int type; int version; } ;
struct eap_hdr {int identifier; void* length; int code; } ;


 int EAPOL_VERSION ;
 int EAP_CODE_REQUEST ;
 int EAP_TYPE_IDENTITY ;
 int IEEE802_1X_TYPE_EAP_PACKET ;
 int eapol_sm_rx_eapol (int ,int ,int *,int) ;
 void* htons (int) ;
 scalar_t__ os_get_random (int *,int) ;
 int os_random () ;
 int printf (char*) ;

__attribute__((used)) static void send_eap_request_identity(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 u8 buf[100], *pos;
 struct ieee802_1x_hdr *hdr;
 struct eap_hdr *eap;

 hdr = (struct ieee802_1x_hdr *) buf;
 hdr->version = EAPOL_VERSION;
 hdr->type = IEEE802_1X_TYPE_EAP_PACKET;
 hdr->length = htons(5);

 eap = (struct eap_hdr *) (hdr + 1);
 eap->code = EAP_CODE_REQUEST;
 if (os_get_random((u8 *) &eap->identifier, sizeof(eap->identifier)) < 0)
  eap->identifier = os_random() & 0xff;
 eap->length = htons(5);
 pos = (u8 *) (eap + 1);
 *pos = EAP_TYPE_IDENTITY;

 printf("Sending fake EAP-Request-Identity\n");
 eapol_sm_rx_eapol(wpa_s->eapol, wpa_s->bssid, buf,
     sizeof(*hdr) + 5);
}
