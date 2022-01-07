
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; TYPE_1__* user; } ;
struct TYPE_5__ {int dhcomp_len; int dhgroup; } ;
struct eap_eke_data {int msgs; TYPE_2__ sess; int key; int dh_priv; int peerid_len; int peerid; } ;
struct TYPE_4__ {int password_len; int * password; } ;


 int EAP_EKE_COMMIT ;
 int EAP_EKE_FAIL_PASSWD_NOT_FOUND ;
 int EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ;
 int EAP_EKE_MAX_DH_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 struct wpabuf* eap_eke_build_failure (struct eap_eke_data*,int ) ;
 struct wpabuf* eap_eke_build_msg (struct eap_eke_data*,int ,int ,int ) ;
 scalar_t__ eap_eke_derive_key (TYPE_2__*,int *,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ eap_eke_dh_init (int ,int ,int *) ;
 scalar_t__ eap_eke_dhcomp (TYPE_2__*,int ,int *,int ) ;
 int eap_eke_fail (struct eap_eke_data*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_buf (int ,struct wpabuf*) ;
 scalar_t__ wpabuf_resize (int *,int ) ;

__attribute__((used)) static struct wpabuf * eap_eke_build_commit(struct eap_sm *sm,
         struct eap_eke_data *data, u8 id)
{
 struct wpabuf *msg;
 u8 pub[EAP_EKE_MAX_DH_LEN];

 wpa_printf(MSG_DEBUG, "EAP-EKE: Request/Commit");

 if (sm->user == ((void*)0) || sm->user->password == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-EKE: Password with not configured");
  eap_eke_fail(data, EAP_EKE_FAIL_PASSWD_NOT_FOUND);
  return eap_eke_build_failure(data, id);
 }

 if (eap_eke_derive_key(&data->sess, sm->user->password,
          sm->user->password_len,
          sm->server_id, sm->server_id_len,
          data->peerid, data->peerid_len, data->key) < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to derive key");
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }

 msg = eap_eke_build_msg(data, id, data->sess.dhcomp_len,
    EAP_EKE_COMMIT);
 if (msg == ((void*)0)) {
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }
 if (eap_eke_dh_init(data->sess.dhgroup, data->dh_priv, pub) < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to initialize DH");
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }

 if (eap_eke_dhcomp(&data->sess, data->key, pub,
      wpabuf_put(msg, data->sess.dhcomp_len))
     < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to build DHComponent_S");
  wpabuf_free(msg);
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }

 if (wpabuf_resize(&data->msgs, wpabuf_len(msg)) < 0) {
  wpabuf_free(msg);
  eap_eke_fail(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
  return eap_eke_build_failure(data, id);
 }
 wpabuf_put_buf(data->msgs, msg);

 return msg;
}
