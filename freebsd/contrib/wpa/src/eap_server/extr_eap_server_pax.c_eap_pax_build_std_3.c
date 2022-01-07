
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pax_hdr {int public_key_id; int dh_group_id; int mac_id; scalar_t__ flags; int op_code; } ;
struct TYPE_3__ {int y; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct eap_pax_data {void* state; int ick; int mac_id; int cid_len; scalar_t__ cid; TYPE_2__ rand; int ck; } ;


 int EAP_CODE_REQUEST ;
 int EAP_PAX_CK_LEN ;
 int EAP_PAX_DH_GROUP_NONE ;
 int EAP_PAX_ICK_LEN ;
 int EAP_PAX_ICV_LEN ;
 int EAP_PAX_MAC_LEN ;
 int EAP_PAX_OP_STD_3 ;
 int EAP_PAX_PUBLIC_KEY_NONE ;
 scalar_t__ EAP_PAX_RAND_LEN ;
 int EAP_TYPE_PAX ;
 int EAP_VENDOR_IETF ;
 void* FAILURE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 scalar_t__ eap_pax_mac (int ,int ,int ,int ,scalar_t__,int *,int ,int *,int ,int *) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 void* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_pax_build_std_3(struct eap_sm *sm,
        struct eap_pax_data *data, u8 id)
{
 struct wpabuf *req;
 struct eap_pax_hdr *pax;
 u8 *pos;

 wpa_printf(MSG_DEBUG, "EAP-PAX: PAX_STD-3 (sending)");

 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PAX,
       sizeof(*pax) + 2 + EAP_PAX_MAC_LEN +
       EAP_PAX_ICV_LEN, EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-PAX: Failed to allocate memory "
      "request");
  data->state = FAILURE;
  return ((void*)0);
 }

 pax = wpabuf_put(req, sizeof(*pax));
 pax->op_code = EAP_PAX_OP_STD_3;
 pax->flags = 0;
 pax->mac_id = data->mac_id;
 pax->dh_group_id = EAP_PAX_DH_GROUP_NONE;
 pax->public_key_id = EAP_PAX_PUBLIC_KEY_NONE;

 wpabuf_put_be16(req, EAP_PAX_MAC_LEN);
 pos = wpabuf_put(req, EAP_PAX_MAC_LEN);
 if (eap_pax_mac(data->mac_id, data->ck, EAP_PAX_CK_LEN,
   data->rand.r.y, EAP_PAX_RAND_LEN,
   (u8 *) data->cid, data->cid_len, ((void*)0), 0, pos) < 0) {
  wpa_printf(MSG_ERROR, "EAP-PAX: Failed to calculate MAC");
  data->state = FAILURE;
  wpabuf_free(req);
  return ((void*)0);
 }
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: MAC_CK(B, CID)",
      pos, EAP_PAX_MAC_LEN);



 pos = wpabuf_put(req, EAP_PAX_MAC_LEN);
 if (eap_pax_mac(data->mac_id, data->ick, EAP_PAX_ICK_LEN,
   wpabuf_mhead(req), wpabuf_len(req) - EAP_PAX_ICV_LEN,
   ((void*)0), 0, ((void*)0), 0, pos) < 0) {
  wpa_printf(MSG_ERROR, "EAP-PAX: Failed to calculate ICV");
  data->state = FAILURE;
  wpabuf_free(req);
  return ((void*)0);
 }
 wpa_hexdump(MSG_MSGDUMP, "EAP-PAX: ICV", pos, EAP_PAX_ICV_LEN);

 return req;
}
