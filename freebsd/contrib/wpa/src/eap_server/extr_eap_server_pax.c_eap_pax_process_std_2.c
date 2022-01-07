
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_4__* user; } ;
struct eap_pax_hdr {int dummy; } ;
struct TYPE_5__ {int const* y; int x; } ;
struct TYPE_6__ {TYPE_1__ r; int e; } ;
struct eap_pax_data {scalar_t__ state; size_t cid_len; int keys_set; int ick; int mac_id; int * cid; TYPE_2__ rand; int ck; int mid; int mk; int const* ak; } ;
struct TYPE_8__ {int password_len; int const* password; TYPE_3__* methods; } ;
struct TYPE_7__ {scalar_t__ vendor; scalar_t__ method; } ;


 int EAP_MAX_METHODS ;
 int EAP_PAX_AK_LEN ;
 int EAP_PAX_CK_LEN ;
 int EAP_PAX_ICK_LEN ;
 int EAP_PAX_ICV_LEN ;
 int EAP_PAX_MAC_LEN ;
 int EAP_PAX_RAND_LEN ;
 scalar_t__ EAP_TYPE_NONE ;
 scalar_t__ EAP_TYPE_PAX ;
 scalar_t__ EAP_VENDOR_IETF ;
 void* FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 scalar_t__ PAX_STD_1 ;
 scalar_t__ PAX_STD_3 ;
 int WPA_GET_BE16 (int const*) ;
 int const* eap_hdr_validate (scalar_t__,scalar_t__,struct wpabuf*,size_t*) ;
 scalar_t__ eap_pax_initial_key_derivation (int ,int const*,int ,int ,int ,int ,int ) ;
 scalar_t__ eap_pax_mac (int ,int ,int ,int ,int,int const*,int,int const*,int,int const*) ;
 scalar_t__ eap_user_get (struct eap_sm*,int const*,int,int ) ;
 int os_free (int *) ;
 scalar_t__ os_memcmp_const (int const*,int const*,int) ;
 int os_memcpy (int const*,int const*,int) ;
 int * os_memdup (int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void eap_pax_process_std_2(struct eap_sm *sm,
      struct eap_pax_data *data,
      struct wpabuf *respData)
{
 struct eap_pax_hdr *resp;
 u8 mac[EAP_PAX_MAC_LEN], icvbuf[EAP_PAX_ICV_LEN];
 const u8 *pos;
 size_t len, left, cid_len;
 int i;

 if (data->state != PAX_STD_1)
  return;

 wpa_printf(MSG_DEBUG, "EAP-PAX: Received PAX_STD-2");

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PAX, respData, &len);
 if (pos == ((void*)0) || len < sizeof(*resp) + EAP_PAX_ICV_LEN)
  return;

 resp = (struct eap_pax_hdr *) pos;
 pos = (u8 *) (resp + 1);
 left = len - sizeof(*resp);

 if (left < 2 + EAP_PAX_RAND_LEN ||
     WPA_GET_BE16(pos) != EAP_PAX_RAND_LEN) {
  wpa_printf(MSG_INFO, "EAP-PAX: Too short PAX_STD-2 (B)");
  return;
 }
 pos += 2;
 left -= 2;
 os_memcpy(data->rand.r.y, pos, EAP_PAX_RAND_LEN);
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: Y (client rand)",
      data->rand.r.y, EAP_PAX_RAND_LEN);
 pos += EAP_PAX_RAND_LEN;
 left -= EAP_PAX_RAND_LEN;

 if (left < 2 || (size_t) 2 + WPA_GET_BE16(pos) > left) {
  wpa_printf(MSG_INFO, "EAP-PAX: Too short PAX_STD-2 (CID)");
  return;
 }
 cid_len = WPA_GET_BE16(pos);
 if (cid_len > 1500) {
  wpa_printf(MSG_INFO, "EAP-PAX: Too long CID");
  return;
 }
 data->cid_len = cid_len;
 os_free(data->cid);
 data->cid = os_memdup(pos + 2, data->cid_len);
 if (data->cid == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-PAX: Failed to allocate memory for "
      "CID");
  return;
 }
 pos += 2 + data->cid_len;
 left -= 2 + data->cid_len;
 wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-PAX: CID",
     (u8 *) data->cid, data->cid_len);

 if (left < 2 + EAP_PAX_MAC_LEN ||
     WPA_GET_BE16(pos) != EAP_PAX_MAC_LEN) {
  wpa_printf(MSG_INFO, "EAP-PAX: Too short PAX_STD-2 (MAC_CK)");
  return;
 }
 pos += 2;
 left -= 2;
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: MAC_CK(A, B, CID)",
      pos, EAP_PAX_MAC_LEN);

 if (eap_user_get(sm, (u8 *) data->cid, data->cid_len, 0) < 0) {
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-PAX: unknown CID",
      (u8 *) data->cid, data->cid_len);
  data->state = FAILURE;
  return;
 }

 for (i = 0;
      i < EAP_MAX_METHODS &&
       (sm->user->methods[i].vendor != EAP_VENDOR_IETF ||
        sm->user->methods[i].method != EAP_TYPE_NONE);
      i++) {
  if (sm->user->methods[i].vendor == EAP_VENDOR_IETF &&
      sm->user->methods[i].method == EAP_TYPE_PAX)
   break;
 }

 if (i >= EAP_MAX_METHODS ||
     sm->user->methods[i].vendor != EAP_VENDOR_IETF ||
     sm->user->methods[i].method != EAP_TYPE_PAX) {
  wpa_hexdump_ascii(MSG_DEBUG,
      "EAP-PAX: EAP-PAX not enabled for CID",
      (u8 *) data->cid, data->cid_len);
  data->state = FAILURE;
  return;
 }

 if (sm->user->password == ((void*)0) ||
     sm->user->password_len != EAP_PAX_AK_LEN) {
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-PAX: invalid password in "
      "user database for CID",
      (u8 *) data->cid, data->cid_len);
  data->state = FAILURE;
  return;
 }
 os_memcpy(data->ak, sm->user->password, EAP_PAX_AK_LEN);

 if (eap_pax_initial_key_derivation(data->mac_id, data->ak,
        data->rand.e, data->mk, data->ck,
        data->ick, data->mid) < 0) {
  wpa_printf(MSG_INFO, "EAP-PAX: Failed to complete initial "
      "key derivation");
  data->state = FAILURE;
  return;
 }
 data->keys_set = 1;

 if (eap_pax_mac(data->mac_id, data->ck, EAP_PAX_CK_LEN,
   data->rand.r.x, EAP_PAX_RAND_LEN,
   data->rand.r.y, EAP_PAX_RAND_LEN,
   (u8 *) data->cid, data->cid_len, mac) < 0) {
  wpa_printf(MSG_INFO, "EAP-PAX: Failed to calculate MAC_CK");
  data->state = FAILURE;
  return;
 }

 if (os_memcmp_const(mac, pos, EAP_PAX_MAC_LEN) != 0) {
  wpa_printf(MSG_INFO, "EAP-PAX: Invalid MAC_CK(A, B, CID) in "
      "PAX_STD-2");
  wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: Expected MAC_CK(A, B, CID)",
       mac, EAP_PAX_MAC_LEN);
  data->state = FAILURE;
  return;
 }

 pos += EAP_PAX_MAC_LEN;
 left -= EAP_PAX_MAC_LEN;

 if (left < EAP_PAX_ICV_LEN) {
  wpa_printf(MSG_INFO, "EAP-PAX: Too short ICV (%lu) in "
      "PAX_STD-2", (unsigned long) left);
  return;
 }
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: ICV", pos, EAP_PAX_ICV_LEN);
 if (eap_pax_mac(data->mac_id, data->ick, EAP_PAX_ICK_LEN,
   wpabuf_head(respData),
   wpabuf_len(respData) - EAP_PAX_ICV_LEN, ((void*)0), 0,
   ((void*)0), 0, icvbuf) < 0) {
  wpa_printf(MSG_INFO, "EAP-PAX: Failed to calculate ICV");
  return;
 }

 if (os_memcmp_const(icvbuf, pos, EAP_PAX_ICV_LEN) != 0) {
  wpa_printf(MSG_INFO, "EAP-PAX: Invalid ICV in PAX_STD-2");
  wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: Expected ICV",
       icvbuf, EAP_PAX_ICV_LEN);
  return;
 }
 pos += EAP_PAX_ICV_LEN;
 left -= EAP_PAX_ICV_LEN;

 if (left > 0) {
  wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: ignored extra payload",
       pos, left);
 }

 data->state = PAX_STD_3;
}
