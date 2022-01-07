
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const u8 ;
struct wpabuf {int dummy; } ;
struct eap_pax_hdr {int flags; int public_key_id; int dh_group_id; int mac_id; } ;
struct TYPE_3__ {int const* y; int const* x; } ;
struct TYPE_4__ {TYPE_1__ r; int e; } ;
struct eap_pax_data {scalar_t__ state; int cid_len; int public_key_id; int dh_group_id; int mac_id; int ick; int const* cid; TYPE_2__ rand; int ck; int mid; int mk; int ak; } ;
struct eap_method_ret {void* ignore; } ;


 int EAP_PAX_CK_LEN ;
 int EAP_PAX_FLAGS_CE ;
 int EAP_PAX_ICK_LEN ;
 int EAP_PAX_ICV_LEN ;
 int EAP_PAX_MAC_LEN ;
 int EAP_PAX_OP_STD_2 ;
 int EAP_PAX_RAND_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 scalar_t__ PAX_INIT ;
 scalar_t__ PAX_STD_2_SENT ;
 void* TRUE ;
 int WPA_GET_BE16 (int const*) ;
 struct wpabuf* eap_pax_alloc_resp (struct eap_pax_hdr const*,int const,int ,size_t) ;
 scalar_t__ eap_pax_initial_key_derivation (int ,int ,int ,int ,int ,int ,int ) ;
 int eap_pax_mac (int ,int ,int ,int const*,int,int const*,int,int const*,int,int const*) ;
 int os_memcpy (int const*,int const*,int) ;
 scalar_t__ random_get_bytes (int const*,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_ascii (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;
 int const* wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int const* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int const*,int) ;

__attribute__((used)) static struct wpabuf * eap_pax_process_std_1(struct eap_pax_data *data,
          struct eap_method_ret *ret, u8 id,
          const struct eap_pax_hdr *req,
          size_t req_plen)
{
 struct wpabuf *resp;
 const u8 *pos;
 u8 *rpos;
 size_t left, plen;

 wpa_printf(MSG_DEBUG, "EAP-PAX: PAX_STD-1 (received)");

 if (data->state != PAX_INIT) {
  wpa_printf(MSG_INFO, "EAP-PAX: PAX_STD-1 received in "
      "unexpected state (%d) - ignored", data->state);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (req->flags & EAP_PAX_FLAGS_CE) {
  wpa_printf(MSG_INFO, "EAP-PAX: PAX_STD-1 with CE flag set - "
      "ignored");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 left = req_plen - sizeof(*req);

 if (left < 2 + EAP_PAX_RAND_LEN) {
  wpa_printf(MSG_INFO, "EAP-PAX: PAX_STD-1 with too short "
      "payload");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 pos = (const u8 *) (req + 1);
 if (WPA_GET_BE16(pos) != EAP_PAX_RAND_LEN) {
  wpa_printf(MSG_INFO, "EAP-PAX: PAX_STD-1 with incorrect A "
      "length %d (expected %d)",
      WPA_GET_BE16(pos), EAP_PAX_RAND_LEN);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 pos += 2;
 left -= 2;
 os_memcpy(data->rand.r.x, pos, EAP_PAX_RAND_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: X (server rand)",
      data->rand.r.x, EAP_PAX_RAND_LEN);
 pos += EAP_PAX_RAND_LEN;
 left -= EAP_PAX_RAND_LEN;

 if (left > 0) {
  wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: ignored extra payload",
       pos, left);
 }

 if (random_get_bytes(data->rand.r.y, EAP_PAX_RAND_LEN)) {
  wpa_printf(MSG_ERROR, "EAP-PAX: Failed to get random data");
  ret->ignore = TRUE;
  return ((void*)0);
 }
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: Y (client rand)",
      data->rand.r.y, EAP_PAX_RAND_LEN);

 if (eap_pax_initial_key_derivation(req->mac_id, data->ak, data->rand.e,
        data->mk, data->ck, data->ick,
        data->mid) < 0) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-PAX: PAX_STD-2 (sending)");

 plen = 2 + EAP_PAX_RAND_LEN + 2 + data->cid_len + 2 + EAP_PAX_MAC_LEN +
  EAP_PAX_ICV_LEN;
 resp = eap_pax_alloc_resp(req, id, EAP_PAX_OP_STD_2, plen);
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_be16(resp, EAP_PAX_RAND_LEN);
 wpabuf_put_data(resp, data->rand.r.y, EAP_PAX_RAND_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: B = Y (client rand)",
      data->rand.r.y, EAP_PAX_RAND_LEN);

 wpabuf_put_be16(resp, data->cid_len);
 wpabuf_put_data(resp, data->cid, data->cid_len);
 wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-PAX: CID",
     (u8 *) data->cid, data->cid_len);

 wpabuf_put_be16(resp, EAP_PAX_MAC_LEN);
 rpos = wpabuf_put(resp, EAP_PAX_MAC_LEN);
 eap_pax_mac(req->mac_id, data->ck, EAP_PAX_CK_LEN,
      data->rand.r.x, EAP_PAX_RAND_LEN,
      data->rand.r.y, EAP_PAX_RAND_LEN,
      (u8 *) data->cid, data->cid_len, rpos);
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: MAC_CK(A, B, CID)",
      rpos, EAP_PAX_MAC_LEN);



 rpos = wpabuf_put(resp, EAP_PAX_ICV_LEN);
 eap_pax_mac(req->mac_id, data->ick, EAP_PAX_ICK_LEN,
      wpabuf_head(resp), wpabuf_len(resp) - EAP_PAX_ICV_LEN,
      ((void*)0), 0, ((void*)0), 0, rpos);
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: ICV", rpos, EAP_PAX_ICV_LEN);

 data->state = PAX_STD_2_SENT;
 data->mac_id = req->mac_id;
 data->dh_group_id = req->dh_group_id;
 data->public_key_id = req->public_key_id;

 return resp;
}
