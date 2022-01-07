
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_ttls_data {scalar_t__ state; } ;
struct eap_sm {int dummy; } ;
struct eap_hdr {long code; int identifier; int length; } ;



 int EAP_TYPE_IDENTITY ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ PHASE2_START ;
 size_t be_to_host16 (int ) ;
 scalar_t__ eap_ttls_phase2_eap_init (struct eap_sm*,struct eap_ttls_data*,int ) ;
 int eap_ttls_process_phase2_eap_response (struct eap_sm*,struct eap_ttls_data*,int *,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_ttls_process_phase2_eap(struct eap_sm *sm,
     struct eap_ttls_data *data,
     const u8 *eap, size_t eap_len)
{
 struct eap_hdr *hdr;
 size_t len;

 if (data->state == PHASE2_START) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/EAP: initializing Phase 2");
  if (eap_ttls_phase2_eap_init(sm, data, EAP_TYPE_IDENTITY) < 0)
  {
   wpa_printf(MSG_DEBUG, "EAP-TTLS/EAP: failed to "
       "initialize EAP-Identity");
   return;
  }
 }

 if (eap_len < sizeof(*hdr)) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS/EAP: too short Phase 2 EAP "
      "packet (len=%lu)", (unsigned long) eap_len);
  return;
 }

 hdr = (struct eap_hdr *) eap;
 len = be_to_host16(hdr->length);
 wpa_printf(MSG_DEBUG, "EAP-TTLS/EAP: received Phase 2 EAP: code=%d "
     "identifier=%d length=%lu", hdr->code, hdr->identifier,
     (unsigned long) len);
 if (len > eap_len) {
  wpa_printf(MSG_INFO, "EAP-TTLS/EAP: Length mismatch in Phase 2"
      " EAP frame (hdr len=%lu, data len in AVP=%lu)",
      (unsigned long) len, (unsigned long) eap_len);
  return;
 }

 switch (hdr->code) {
 case 128:
  eap_ttls_process_phase2_eap_response(sm, data, (u8 *) hdr,
           len);
  break;
 default:
  wpa_printf(MSG_INFO, "EAP-TTLS/EAP: Unexpected code=%d in "
      "Phase 2 EAP header", hdr->code);
  break;
 }
}
