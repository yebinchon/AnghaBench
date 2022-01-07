
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct TYPE_5__ {int pnonce_len; int prf_len; scalar_t__ nonce_len; } ;
struct eap_eke_data {scalar_t__ state; TYPE_1__ sess; int key; int dh_priv; int emsk; int msk; int nonce_p; int nonce_s; int peerid_len; int peerid; int msgs; } ;
typedef int nonce ;


 scalar_t__ CONFIRM ;
 int EAP_EKE_FAIL_AUTHENTICATION_FAIL ;
 int EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ;
 int EAP_EKE_FAIL_PROTO_ERROR ;
 int EAP_EKE_MAX_HASH_LEN ;
 int EAP_EKE_MAX_NONCE_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SUCCESS ;
 scalar_t__ eap_eke_auth (TYPE_1__*,char*,int ,int *) ;
 scalar_t__ eap_eke_decrypt_prot (TYPE_1__*,int const*,int,int *,size_t*) ;
 scalar_t__ eap_eke_derive_msk (TYPE_1__*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int eap_eke_fail (struct eap_eke_data*,int ) ;
 int eap_eke_session_clean (TYPE_1__*) ;
 int eap_eke_state (struct eap_eke_data*,int ) ;
 scalar_t__ os_memcmp (int *,int ,scalar_t__) ;
 scalar_t__ os_memcmp_const (int *,int const*,int ) ;
 int os_memset (int ,int ,int) ;
 int wpa_hexdump (int ,char*,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int *,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_eke_process_confirm(struct eap_sm *sm,
        struct eap_eke_data *data,
        const struct wpabuf *respData,
        const u8 *payload, size_t payloadlen)
{
 size_t decrypt_len;
 u8 nonce[EAP_EKE_MAX_NONCE_LEN];
 u8 auth_p[EAP_EKE_MAX_HASH_LEN];

 wpa_printf(MSG_DEBUG, "EAP-EKE: Received Response/Confirm");

 if (data->state != CONFIRM) {
  eap_eke_fail(data, EAP_EKE_FAIL_PROTO_ERROR);
  return;
 }

 wpa_printf(MSG_DEBUG, "EAP-EKE: Received Response/Confirm");

 if (payloadlen < (size_t) data->sess.pnonce_len + data->sess.prf_len) {
  wpa_printf(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Confirm");
  eap_eke_fail(data, EAP_EKE_FAIL_PROTO_ERROR);
  return;
 }

 decrypt_len = sizeof(nonce);
 if (eap_eke_decrypt_prot(&data->sess, payload, data->sess.pnonce_len,
     nonce, &decrypt_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to decrypt PNonce_S");
  eap_eke_fail(data, EAP_EKE_FAIL_AUTHENTICATION_FAIL);
  return;
 }
 if (decrypt_len < (size_t) data->sess.nonce_len) {
  wpa_printf(MSG_INFO, "EAP-EKE: PNonce_S protected data too short to include Nonce_S");
  eap_eke_fail(data, EAP_EKE_FAIL_AUTHENTICATION_FAIL);
  return;
 }
 wpa_hexdump_key(MSG_DEBUG, "EAP-EKE: Received Nonce_S",
   nonce, data->sess.nonce_len);
 if (os_memcmp(nonce, data->nonce_s, data->sess.nonce_len) != 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Received Nonce_S does not match previously sent Nonce_S");
  eap_eke_fail(data, EAP_EKE_FAIL_AUTHENTICATION_FAIL);
  return;
 }

 if (eap_eke_auth(&data->sess, "EAP-EKE peer", data->msgs, auth_p) < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Could not derive Auth_P");
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return;
 }
 wpa_hexdump(MSG_DEBUG, "EAP-EKE: Auth_P", auth_p, data->sess.prf_len);
 if (os_memcmp_const(auth_p, payload + data->sess.pnonce_len,
       data->sess.prf_len) != 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Auth_P does not match");
  eap_eke_fail(data, EAP_EKE_FAIL_AUTHENTICATION_FAIL);
  return;
 }

 if (eap_eke_derive_msk(&data->sess, sm->server_id, sm->server_id_len,
          data->peerid, data->peerid_len,
          data->nonce_s, data->nonce_p,
          data->msk, data->emsk) < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to derive MSK/EMSK");
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return;
 }

 os_memset(data->dh_priv, 0, sizeof(data->dh_priv));
 os_memset(data->key, 0, sizeof(data->key));
 eap_eke_session_clean(&data->sess);

 eap_eke_state(data, SUCCESS);
}
