
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct TYPE_4__ {size_t pnonce_ps_len; size_t prf_len; int nonce_len; } ;
struct eap_eke_data {TYPE_1__ sess; int msgs; int nonce_s; int nonce_p; int peerid_len; int peerid; } ;


 int EAP_EKE_CONFIRM ;
 int EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ;
 int EAP_EKE_MAX_NONCE_LEN ;
 int MSG_DEBUG ;
 scalar_t__ eap_eke_auth (TYPE_1__*,char*,int ,int *) ;
 struct wpabuf* eap_eke_build_failure (struct eap_eke_data*,int ) ;
 struct wpabuf* eap_eke_build_msg (struct eap_eke_data*,int ,size_t,int ) ;
 scalar_t__ eap_eke_derive_ka (TYPE_1__*,int ,int ,int ,int ,int ,int ) ;
 int eap_eke_fail (struct eap_eke_data*,int ) ;
 scalar_t__ eap_eke_prot (TYPE_1__*,int *,int,int *,size_t*) ;
 int os_memcpy (int *,int ,int) ;
 scalar_t__ random_get_bytes (int ,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_put (struct wpabuf*,size_t) ;
 size_t wpabuf_tailroom (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * eap_eke_build_confirm(struct eap_sm *sm,
          struct eap_eke_data *data, u8 id)
{
 struct wpabuf *msg;
 size_t plen, prot_len;
 u8 nonces[2 * EAP_EKE_MAX_NONCE_LEN];
 u8 *auth;

 wpa_printf(MSG_DEBUG, "EAP-EKE: Request/Confirm");

 plen = data->sess.pnonce_ps_len + data->sess.prf_len;
 msg = eap_eke_build_msg(data, id, plen, EAP_EKE_CONFIRM);
 if (msg == ((void*)0)) {
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }

 if (random_get_bytes(data->nonce_s, data->sess.nonce_len)) {
  wpabuf_free(msg);
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }
 wpa_hexdump_key(MSG_DEBUG, "EAP-EKE: Nonce_S",
   data->nonce_s, data->sess.nonce_len);

 os_memcpy(nonces, data->nonce_p, data->sess.nonce_len);
 os_memcpy(nonces + data->sess.nonce_len, data->nonce_s,
    data->sess.nonce_len);
 prot_len = wpabuf_tailroom(msg);
 if (eap_eke_prot(&data->sess, nonces, 2 * data->sess.nonce_len,
    wpabuf_put(msg, 0), &prot_len) < 0) {
  wpabuf_free(msg);
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }
 wpabuf_put(msg, prot_len);

 if (eap_eke_derive_ka(&data->sess,
         sm->server_id, sm->server_id_len,
         data->peerid, data->peerid_len,
         data->nonce_p, data->nonce_s) < 0) {
  wpabuf_free(msg);
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }

 auth = wpabuf_put(msg, data->sess.prf_len);
 if (eap_eke_auth(&data->sess, "EAP-EKE server", data->msgs, auth) < 0) {
  wpabuf_free(msg);
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }
 wpa_hexdump(MSG_DEBUG, "EAP-EKE: Auth_S", auth, data->sess.prf_len);

 return msg;
}
