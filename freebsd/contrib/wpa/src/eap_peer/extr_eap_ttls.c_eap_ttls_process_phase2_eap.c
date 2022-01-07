
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct ttls_parse_avp {int eap_len; int * eapdata; } ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int dummy; } ;
struct eap_hdr {long code; int identifier; int length; } ;



 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 size_t be_to_host16 (int ) ;
 int eap_ttls_phase2_request (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,struct wpabuf**) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_ttls_process_phase2_eap(struct eap_sm *sm,
           struct eap_ttls_data *data,
           struct eap_method_ret *ret,
           struct ttls_parse_avp *parse,
           struct wpabuf **resp)
{
 struct eap_hdr *hdr;
 size_t len;

 if (parse->eapdata == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-TTLS: No EAP Message in the "
      "packet - dropped");
  return -1;
 }

 wpa_hexdump(MSG_DEBUG, "EAP-TTLS: Phase 2 EAP",
      parse->eapdata, parse->eap_len);
 hdr = (struct eap_hdr *) parse->eapdata;

 if (parse->eap_len < sizeof(*hdr)) {
  wpa_printf(MSG_WARNING, "EAP-TTLS: Too short Phase 2 EAP "
      "frame (len=%lu, expected %lu or more) - dropped",
      (unsigned long) parse->eap_len,
      (unsigned long) sizeof(*hdr));
  return -1;
 }
 len = be_to_host16(hdr->length);
 if (len > parse->eap_len) {
  wpa_printf(MSG_INFO, "EAP-TTLS: Length mismatch in Phase 2 "
      "EAP frame (EAP hdr len=%lu, EAP data len in "
      "AVP=%lu)",
      (unsigned long) len,
      (unsigned long) parse->eap_len);
  return -1;
 }
 wpa_printf(MSG_DEBUG, "EAP-TTLS: received Phase 2: code=%d "
     "identifier=%d length=%lu",
     hdr->code, hdr->identifier, (unsigned long) len);
 switch (hdr->code) {
 case 128:
  if (eap_ttls_phase2_request(sm, data, ret, hdr, resp)) {
   wpa_printf(MSG_INFO, "EAP-TTLS: Phase2 Request "
       "processing failed");
   return -1;
  }
  break;
 default:
  wpa_printf(MSG_INFO, "EAP-TTLS: Unexpected code=%d in "
      "Phase 2 EAP header", hdr->code);
  return -1;
 }

 return 0;
}
