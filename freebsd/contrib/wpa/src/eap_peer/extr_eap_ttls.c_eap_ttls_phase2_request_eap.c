
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_sim; scalar_t__ pending_req_otp; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;
struct eap_method_ret {int dummy; } ;
struct eap_hdr {int identifier; int length; } ;



 int MSG_DEBUG ;
 int MSG_INFO ;
 int RADIUS_ATTR_EAP_MESSAGE ;
 size_t be_to_host16 (int ) ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 struct wpabuf* eap_sm_buildIdentity (struct eap_sm*,int ,int) ;
 int eap_ttls_avp_encapsulate (struct wpabuf**,int ,int) ;
 int eap_ttls_phase2_request_eap_method (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,size_t,long,struct wpabuf**) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,long) ;

__attribute__((used)) static int eap_ttls_phase2_request_eap(struct eap_sm *sm,
           struct eap_ttls_data *data,
           struct eap_method_ret *ret,
           struct eap_hdr *hdr,
           struct wpabuf **resp)
{
 size_t len = be_to_host16(hdr->length);
 u8 *pos;
 struct eap_peer_config *config = eap_get_config(sm);

 if (len <= sizeof(struct eap_hdr)) {
  wpa_printf(MSG_INFO, "EAP-TTLS: too short "
      "Phase 2 request (len=%lu)", (unsigned long) len);
  return -1;
 }
 pos = (u8 *) (hdr + 1);
 wpa_printf(MSG_DEBUG, "EAP-TTLS: Phase 2 EAP Request: type=%d", *pos);
 switch (*pos) {
 case 128:
  *resp = eap_sm_buildIdentity(sm, hdr->identifier, 1);
  break;
 default:
  if (eap_ttls_phase2_request_eap_method(sm, data, ret, hdr, len,
             *pos, resp) < 0)
   return -1;
  break;
 }

 if (*resp == ((void*)0) &&
     (config->pending_req_identity || config->pending_req_password ||
      config->pending_req_otp || config->pending_req_sim)) {
  return 0;
 }

 if (*resp == ((void*)0))
  return -1;

 wpa_hexdump_buf(MSG_DEBUG, "EAP-TTLS: AVP encapsulate EAP Response",
   *resp);
 return eap_ttls_avp_encapsulate(resp, RADIUS_ATTR_EAP_MESSAGE, 1);
}
