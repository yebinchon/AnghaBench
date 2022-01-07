
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const u8 ;
struct wpabuf {int dummy; } ;
struct eap_pax_hdr {int flags; } ;
struct TYPE_3__ {int y; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct eap_pax_data {scalar_t__ state; int ick; int mac_id; int cid_len; scalar_t__ cid; TYPE_2__ rand; int ck; } ;
struct eap_method_ret {int allowNotifications; void* decision; void* methodState; void* ignore; } ;


 void* DECISION_FAIL ;
 void* DECISION_UNCOND_SUCC ;
 int EAP_PAX_CK_LEN ;
 int EAP_PAX_FLAGS_CE ;
 int EAP_PAX_ICK_LEN ;
 size_t EAP_PAX_ICV_LEN ;
 int EAP_PAX_MAC_LEN ;
 int EAP_PAX_OP_ACK ;
 scalar_t__ EAP_PAX_RAND_LEN ;
 int FALSE ;
 void* METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 scalar_t__ PAX_DONE ;
 scalar_t__ PAX_STD_2_SENT ;
 void* TRUE ;
 int WPA_GET_BE16 (int const*) ;
 struct wpabuf* eap_pax_alloc_resp (struct eap_pax_hdr const*,int const,int ,size_t) ;
 scalar_t__ eap_pax_mac (int ,int ,int ,int ,scalar_t__,int const*,int ,int *,int ,int const*) ;
 scalar_t__ os_memcmp_const (int const*,int const*,int) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int const* wpabuf_put (struct wpabuf*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_pax_process_std_3(struct eap_pax_data *data,
          struct eap_method_ret *ret, u8 id,
          const struct eap_pax_hdr *req,
          size_t req_plen)
{
 struct wpabuf *resp;
 u8 *rpos, mac[EAP_PAX_MAC_LEN];
 const u8 *pos;
 size_t left;

 wpa_printf(MSG_DEBUG, "EAP-PAX: PAX_STD-3 (received)");

 if (data->state != PAX_STD_2_SENT) {
  wpa_printf(MSG_INFO, "EAP-PAX: PAX_STD-3 received in "
      "unexpected state (%d) - ignored", data->state);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (req->flags & EAP_PAX_FLAGS_CE) {
  wpa_printf(MSG_INFO, "EAP-PAX: PAX_STD-3 with CE flag set - "
      "ignored");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 left = req_plen - sizeof(*req);

 if (left < 2 + EAP_PAX_MAC_LEN) {
  wpa_printf(MSG_INFO, "EAP-PAX: PAX_STD-3 with too short "
      "payload");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 pos = (const u8 *) (req + 1);
 if (WPA_GET_BE16(pos) != EAP_PAX_MAC_LEN) {
  wpa_printf(MSG_INFO, "EAP-PAX: PAX_STD-3 with incorrect "
      "MAC_CK length %d (expected %d)",
      WPA_GET_BE16(pos), EAP_PAX_MAC_LEN);
  ret->ignore = TRUE;
  return ((void*)0);
 }
 pos += 2;
 left -= 2;
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: MAC_CK(B, CID)",
      pos, EAP_PAX_MAC_LEN);
 if (eap_pax_mac(data->mac_id, data->ck, EAP_PAX_CK_LEN,
   data->rand.r.y, EAP_PAX_RAND_LEN,
   (u8 *) data->cid, data->cid_len, ((void*)0), 0, mac) < 0) {
  wpa_printf(MSG_INFO,
      "EAP-PAX: Could not derive MAC_CK(B, CID)");
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  return ((void*)0);
 }

 if (os_memcmp_const(pos, mac, EAP_PAX_MAC_LEN) != 0) {
  wpa_printf(MSG_INFO, "EAP-PAX: Invalid MAC_CK(B, CID) "
      "received");
  wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: expected MAC_CK(B, CID)",
       mac, EAP_PAX_MAC_LEN);
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  return ((void*)0);
 }

 pos += EAP_PAX_MAC_LEN;
 left -= EAP_PAX_MAC_LEN;

 if (left > 0) {
  wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: ignored extra payload",
       pos, left);
 }

 wpa_printf(MSG_DEBUG, "EAP-PAX: PAX-ACK (sending)");

 resp = eap_pax_alloc_resp(req, id, EAP_PAX_OP_ACK, EAP_PAX_ICV_LEN);
 if (resp == ((void*)0))
  return ((void*)0);



 rpos = wpabuf_put(resp, EAP_PAX_ICV_LEN);
 if (eap_pax_mac(data->mac_id, data->ick, EAP_PAX_ICK_LEN,
   wpabuf_head(resp), wpabuf_len(resp) - EAP_PAX_ICV_LEN,
   ((void*)0), 0, ((void*)0), 0, rpos) < 0) {
  wpabuf_free(resp);
  return ((void*)0);
 }
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: ICV", rpos, EAP_PAX_ICV_LEN);

 data->state = PAX_DONE;
 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_UNCOND_SUCC;
 ret->allowNotifications = FALSE;

 return resp;
}
