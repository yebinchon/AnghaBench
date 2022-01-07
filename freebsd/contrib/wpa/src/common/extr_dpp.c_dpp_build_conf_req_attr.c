
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char const u8 ;
struct wpabuf {int dummy; } ;
struct dpp_authentication {char const* e_nonce; TYPE_1__* curve; int ke; } ;
struct TYPE_2__ {size_t nonce_len; int hash_len; } ;


 int AES_BLOCK_SIZE ;
 int DPP_ATTR_CONFIG_ATTR_OBJ ;
 int DPP_ATTR_ENROLLEE_NONCE ;
 int DPP_ATTR_WRAPPED_DATA ;
 int DPP_STATUS_OK ;
 scalar_t__ DPP_TEST_AFTER_WRAPPED_DATA_CONF_REQ ;
 scalar_t__ DPP_TEST_INVALID_E_NONCE_CONF_REQ ;
 scalar_t__ DPP_TEST_NO_CONFIG_ATTR_OBJ_CONF_REQ ;
 scalar_t__ DPP_TEST_NO_E_NONCE_CONF_REQ ;
 scalar_t__ DPP_TEST_NO_WRAPPED_DATA_CONF_REQ ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 scalar_t__ aes_siv_encrypt (int ,int ,int ,int,int ,int *,int *,char const*) ;
 int dpp_build_attr_status (struct wpabuf*,int ) ;
 scalar_t__ dpp_test ;
 size_t os_strlen (char const*) ;
 scalar_t__ random_get_bytes (char const*,size_t) ;
 int wpa_hexdump (int ,char*,char const*,int) ;
 int wpa_hexdump_ascii (int ,char*,char const*,size_t) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 char const* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,char const*,size_t) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * dpp_build_conf_req_attr(struct dpp_authentication *auth,
            const char *json)
{
 size_t nonce_len;
 size_t json_len, clear_len;
 struct wpabuf *clear = ((void*)0), *msg = ((void*)0);
 u8 *wrapped;
 size_t attr_len;

 wpa_printf(MSG_DEBUG, "DPP: Build configuration request");

 nonce_len = auth->curve->nonce_len;
 if (random_get_bytes(auth->e_nonce, nonce_len)) {
  wpa_printf(MSG_ERROR, "DPP: Failed to generate E-nonce");
  goto fail;
 }
 wpa_hexdump(MSG_DEBUG, "DPP: E-nonce", auth->e_nonce, nonce_len);
 json_len = os_strlen(json);
 wpa_hexdump_ascii(MSG_DEBUG, "DPP: configAttr JSON", json, json_len);


 clear_len = 4 + nonce_len + 4 + json_len;
 clear = wpabuf_alloc(clear_len);
 attr_len = 4 + clear_len + AES_BLOCK_SIZE;




 msg = wpabuf_alloc(attr_len);
 if (!clear || !msg)
  goto fail;
 wpabuf_put_le16(clear, DPP_ATTR_ENROLLEE_NONCE);
 wpabuf_put_le16(clear, nonce_len);
 wpabuf_put_data(clear, auth->e_nonce, nonce_len);
 wpabuf_put_le16(clear, DPP_ATTR_CONFIG_ATTR_OBJ);
 wpabuf_put_le16(clear, json_len);
 wpabuf_put_data(clear, json, json_len);





 wpabuf_put_le16(msg, DPP_ATTR_WRAPPED_DATA);
 wpabuf_put_le16(msg, wpabuf_len(clear) + AES_BLOCK_SIZE);
 wrapped = wpabuf_put(msg, wpabuf_len(clear) + AES_BLOCK_SIZE);


 wpa_hexdump_buf(MSG_DEBUG, "DPP: AES-SIV cleartext", clear);
 if (aes_siv_encrypt(auth->ke, auth->curve->hash_len,
       wpabuf_head(clear), wpabuf_len(clear),
       0, ((void*)0), ((void*)0), wrapped) < 0)
  goto fail;
 wpa_hexdump(MSG_DEBUG, "DPP: AES-SIV ciphertext",
      wrapped, wpabuf_len(clear) + AES_BLOCK_SIZE);
 wpa_hexdump_buf(MSG_DEBUG,
   "DPP: Configuration Request frame attributes", msg);
 wpabuf_free(clear);
 return msg;

fail:
 wpabuf_free(clear);
 wpabuf_free(msg);
 return ((void*)0);
}
