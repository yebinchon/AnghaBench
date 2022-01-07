
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct eap_md5_data {void* state; int challenge; } ;
struct TYPE_2__ {int password_len; int * password; scalar_t__ password_hash; } ;


 int CHALLENGE_LEN ;
 int CHAP_MD5_LEN ;
 int EAP_TYPE_MD5 ;
 int EAP_VENDOR_IETF ;
 void* FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 void* SUCCESS ;
 scalar_t__ chap_md5 (int,int *,int ,int ,int ,int*) ;
 int eap_get_id (struct wpabuf*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 scalar_t__ os_memcmp_const (int*,int const*,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_md5_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_md5_data *data = priv;
 const u8 *pos;
 size_t plen;
 u8 hash[CHAP_MD5_LEN], id;

 if (sm->user == ((void*)0) || sm->user->password == ((void*)0) ||
     sm->user->password_hash) {
  wpa_printf(MSG_INFO, "EAP-MD5: Plaintext password not "
      "configured");
  data->state = FAILURE;
  return;
 }

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_MD5, respData, &plen);
 if (pos == ((void*)0) || *pos != CHAP_MD5_LEN || plen < 1 + CHAP_MD5_LEN)
  return;

 pos++;
 wpa_hexdump(MSG_MSGDUMP, "EAP-MD5: Response", pos, CHAP_MD5_LEN);

 id = eap_get_id(respData);
 if (chap_md5(id, sm->user->password, sm->user->password_len,
       data->challenge, CHALLENGE_LEN, hash)) {
  wpa_printf(MSG_INFO, "EAP-MD5: CHAP MD5 operation failed");
  data->state = FAILURE;
  return;
 }

 if (os_memcmp_const(hash, pos, CHAP_MD5_LEN) == 0) {
  wpa_printf(MSG_DEBUG, "EAP-MD5: Done - Success");
  data->state = SUCCESS;
 } else {
  wpa_printf(MSG_DEBUG, "EAP-MD5: Done - Failure");
  data->state = FAILURE;
 }
}
