
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {scalar_t__ state; } ;
struct eap_sm {int dummy; } ;
typedef int Boolean ;


 int const EAP_TNC_FLAGS_START ;
 int const EAP_TNC_VERSION ;
 int const EAP_TNC_VERSION_MASK ;
 int EAP_TYPE_TNC ;
 int EAP_VENDOR_IETF ;
 int FALSE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int TRUE ;
 scalar_t__ WAIT_FRAG_ACK ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static Boolean eap_tnc_check(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_tnc_data *data = priv;
 const u8 *pos;
 size_t len;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_TNC, respData,
          &len);
 if (pos == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-TNC: Invalid frame");
  return TRUE;
 }

 if (len == 0 && data->state != WAIT_FRAG_ACK) {
  wpa_printf(MSG_INFO, "EAP-TNC: Invalid frame (empty)");
  return TRUE;
 }

 if (len == 0)
  return FALSE;

 if ((*pos & EAP_TNC_VERSION_MASK) != EAP_TNC_VERSION) {
  wpa_printf(MSG_DEBUG, "EAP-TNC: Unsupported version %d",
      *pos & EAP_TNC_VERSION_MASK);
  return TRUE;
 }

 if (*pos & EAP_TNC_FLAGS_START) {
  wpa_printf(MSG_DEBUG, "EAP-TNC: Peer used Start flag");
  return TRUE;
 }

 return FALSE;
}
