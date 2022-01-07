
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_hdr {long code; int identifier; int length; } ;
struct eap_fast_data {int dummy; } ;



 int MSG_DEBUG ;
 int MSG_INFO ;
 size_t be_to_host16 (int ) ;
 int eap_fast_process_phase2_response (struct eap_sm*,struct eap_fast_data*,int *,size_t) ;
 int eap_fast_req_failure (struct eap_sm*,struct eap_fast_data*) ;
 int wpa_printf (int ,char*,unsigned long,...) ;

__attribute__((used)) static void eap_fast_process_phase2_eap(struct eap_sm *sm,
     struct eap_fast_data *data,
     u8 *in_data, size_t in_len)
{
 struct eap_hdr *hdr;
 size_t len;

 hdr = (struct eap_hdr *) in_data;
 if (in_len < (int) sizeof(*hdr)) {
  wpa_printf(MSG_INFO, "EAP-FAST: Too short Phase 2 "
      "EAP frame (len=%lu)", (unsigned long) in_len);
  eap_fast_req_failure(sm, data);
  return;
 }
 len = be_to_host16(hdr->length);
 if (len > in_len) {
  wpa_printf(MSG_INFO, "EAP-FAST: Length mismatch in "
      "Phase 2 EAP frame (len=%lu hdr->length=%lu)",
      (unsigned long) in_len, (unsigned long) len);
  eap_fast_req_failure(sm, data);
  return;
 }
 wpa_printf(MSG_DEBUG, "EAP-FAST: Received Phase 2: code=%d "
     "identifier=%d length=%lu", hdr->code, hdr->identifier,
     (unsigned long) len);
 switch (hdr->code) {
 case 128:
  eap_fast_process_phase2_response(sm, data, (u8 *) hdr, len);
  break;
 default:
  wpa_printf(MSG_INFO, "EAP-FAST: Unexpected code=%d in "
      "Phase 2 EAP header", hdr->code);
  break;
 }
}
