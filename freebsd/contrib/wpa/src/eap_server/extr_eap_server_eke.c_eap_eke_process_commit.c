
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct TYPE_4__ {int dhcomp_len; int pnonce_len; scalar_t__ nonce_len; } ;
struct eap_eke_data {scalar_t__ state; int msgs; TYPE_1__ sess; int nonce_p; int peerid_len; int peerid; int dh_priv; int key; } ;


 scalar_t__ COMMIT ;
 int CONFIRM ;
 int EAP_EKE_FAIL_AUTHENTICATION_FAIL ;
 int EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ;
 int EAP_EKE_FAIL_PROTO_ERROR ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ eap_eke_decrypt_prot (TYPE_1__*,int const*,int,int ,size_t*) ;
 scalar_t__ eap_eke_derive_ke_ki (TYPE_1__*,int ,int ,int ,int ) ;
 int eap_eke_fail (struct eap_eke_data*,int ) ;
 scalar_t__ eap_eke_shared_secret (TYPE_1__*,int ,int ,int const*) ;
 int eap_eke_state (struct eap_eke_data*,int ) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_key (int ,char*,int ,scalar_t__) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_buf (int ,struct wpabuf const*) ;
 scalar_t__ wpabuf_resize (int *,int ) ;

__attribute__((used)) static void eap_eke_process_commit(struct eap_sm *sm,
       struct eap_eke_data *data,
       const struct wpabuf *respData,
       const u8 *payload, size_t payloadlen)
{
 const u8 *pos, *end, *dhcomp, *pnonce;
 size_t decrypt_len;

 wpa_printf(MSG_DEBUG, "EAP-EKE: Received Response/Commit");

 if (data->state != COMMIT) {
  eap_eke_fail(data, EAP_EKE_FAIL_PROTO_ERROR);
  return;
 }

 pos = payload;
 end = payload + payloadlen;

 if (pos + data->sess.dhcomp_len + data->sess.pnonce_len > end) {
  wpa_printf(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Commit");
  eap_eke_fail(data, EAP_EKE_FAIL_PROTO_ERROR);
  return;
 }

 wpa_hexdump(MSG_DEBUG, "EAP-EKE: DHComponent_P",
      pos, data->sess.dhcomp_len);
 dhcomp = pos;
 pos += data->sess.dhcomp_len;
 wpa_hexdump(MSG_DEBUG, "EAP-EKE: PNonce_P", pos, data->sess.pnonce_len);
 pnonce = pos;
 pos += data->sess.pnonce_len;
 wpa_hexdump(MSG_DEBUG, "EAP-EKE: CBValue", pos, end - pos);

 if (eap_eke_shared_secret(&data->sess, data->key, data->dh_priv, dhcomp)
     < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to derive shared secret");
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return;
 }

 if (eap_eke_derive_ke_ki(&data->sess,
     sm->server_id, sm->server_id_len,
     data->peerid, data->peerid_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to derive Ke/Ki");
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return;
 }

 decrypt_len = sizeof(data->nonce_p);
 if (eap_eke_decrypt_prot(&data->sess, pnonce, data->sess.pnonce_len,
     data->nonce_p, &decrypt_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to decrypt PNonce_P");
  eap_eke_fail(data, EAP_EKE_FAIL_AUTHENTICATION_FAIL);
  return;
 }
 if (decrypt_len < (size_t) data->sess.nonce_len) {
  wpa_printf(MSG_INFO, "EAP-EKE: PNonce_P protected data too short to include Nonce_P");
  eap_eke_fail(data, EAP_EKE_FAIL_AUTHENTICATION_FAIL);
  return;
 }
 wpa_hexdump_key(MSG_DEBUG, "EAP-EKE: Nonce_P",
   data->nonce_p, data->sess.nonce_len);

 if (wpabuf_resize(&data->msgs, wpabuf_len(respData)) < 0) {
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return;
 }
 wpabuf_put_buf(data->msgs, respData);

 eap_eke_state(data, CONFIRM);
}
