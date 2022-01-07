
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct eap_hdr {int code; int identifier; int length; } ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int be_to_host16 (int ) ;
 int handle_eap_initiate (struct hostapd_data*,struct sta_info*,struct eap_hdr*,int) ;
 int handle_eap_response (struct hostapd_data*,struct sta_info*,struct eap_hdr*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void handle_eap(struct hostapd_data *hapd, struct sta_info *sta,
         u8 *buf, size_t len)
{
 struct eap_hdr *eap;
 u16 eap_len;

 if (len < sizeof(*eap)) {
  wpa_printf(MSG_INFO, "   too short EAP packet");
  return;
 }

 eap = (struct eap_hdr *) buf;

 eap_len = be_to_host16(eap->length);
 wpa_printf(MSG_DEBUG, "EAP: code=%d identifier=%d length=%d",
     eap->code, eap->identifier, eap_len);
 if (eap_len < sizeof(*eap)) {
  wpa_printf(MSG_DEBUG, "   Invalid EAP length");
  return;
 } else if (eap_len > len) {
  wpa_printf(MSG_DEBUG, "   Too short frame to contain this EAP "
      "packet");
  return;
 } else if (eap_len < len) {
  wpa_printf(MSG_DEBUG, "   Ignoring %lu extra bytes after EAP "
      "packet", (unsigned long) len - eap_len);
 }

 switch (eap->code) {
 case 130:
  wpa_printf(MSG_DEBUG, " (request)");
  return;
 case 129:
  wpa_printf(MSG_DEBUG, " (response)");
  handle_eap_response(hapd, sta, eap, eap_len);
  break;
 case 128:
  wpa_printf(MSG_DEBUG, " (success)");
  return;
 case 133:
  wpa_printf(MSG_DEBUG, " (failure)");
  return;
 case 131:
  wpa_printf(MSG_DEBUG, " (initiate)");
  handle_eap_initiate(hapd, sta, eap, eap_len);
  break;
 case 132:
  wpa_printf(MSG_DEBUG, " (finish)");
  break;
 default:
  wpa_printf(MSG_DEBUG, " (unknown code)");
  return;
 }
}
