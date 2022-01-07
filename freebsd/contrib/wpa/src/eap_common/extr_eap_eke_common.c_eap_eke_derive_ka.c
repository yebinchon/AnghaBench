
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct eap_eke_session {int nonce_len; int prf_len; int ka; int shared_secret; int prf; } ;


 int MSG_DEBUG ;
 scalar_t__ eap_eke_prfplus (int ,int ,int ,char*,size_t,int ,int ) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,char const*,size_t) ;
 size_t os_strlen (char const*) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;

int eap_eke_derive_ka(struct eap_eke_session *sess,
        const u8 *id_s, size_t id_s_len,
        const u8 *id_p, size_t id_p_len,
        const u8 *nonce_p, const u8 *nonce_s)
{
 u8 *data, *pos;
 size_t data_len;
 const char *label = "EAP-EKE Ka";
 size_t label_len;
 label_len = os_strlen(label);
 data_len = label_len + id_s_len + id_p_len + 2 * sess->nonce_len;
 data = os_malloc(data_len);
 if (data == ((void*)0))
  return -1;
 pos = data;
 os_memcpy(pos, label, label_len);
 pos += label_len;
 os_memcpy(pos, id_s, id_s_len);
 pos += id_s_len;
 os_memcpy(pos, id_p, id_p_len);
 pos += id_p_len;
 os_memcpy(pos, nonce_p, sess->nonce_len);
 pos += sess->nonce_len;
 os_memcpy(pos, nonce_s, sess->nonce_len);
 if (eap_eke_prfplus(sess->prf, sess->shared_secret, sess->prf_len,
       data, data_len, sess->ka, sess->prf_len) < 0) {
  os_free(data);
  return -1;
 }
 os_free(data);

 wpa_hexdump_key(MSG_DEBUG, "EAP-EKE: Ka", sess->ka, sess->prf_len);

 return 0;
}
