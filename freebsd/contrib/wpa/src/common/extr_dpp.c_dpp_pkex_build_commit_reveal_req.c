
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef struct wpabuf const wpabuf ;
struct dpp_pkex {int z; TYPE_1__* own_bi; } ;
struct dpp_curve_params {int prime_len; int hash_len; } ;
typedef int octet ;
struct TYPE_2__ {struct dpp_curve_params* curve; } ;


 int AES_BLOCK_SIZE ;
 int DPP_ATTR_BOOTSTRAP_KEY ;
 int DPP_ATTR_I_AUTH_TAG ;
 int DPP_ATTR_WRAPPED_DATA ;
 size_t DPP_HDR_LEN ;
 int DPP_PA_PKEX_COMMIT_REVEAL_REQ ;
 int DPP_STATUS_OK ;
 scalar_t__ DPP_TEST_AFTER_WRAPPED_DATA_PKEX_CR_REQ ;
 scalar_t__ DPP_TEST_INVALID_BOOTSTRAP_KEY_PKEX_CR_REQ ;
 scalar_t__ DPP_TEST_I_AUTH_TAG_MISMATCH_PKEX_CR_REQ ;
 scalar_t__ DPP_TEST_NO_BOOTSTRAP_KEY_PKEX_CR_REQ ;
 scalar_t__ DPP_TEST_NO_I_AUTH_TAG_PKEX_CR_REQ ;
 scalar_t__ DPP_TEST_NO_WRAPPED_DATA_PKEX_CR_REQ ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ aes_siv_encrypt (int ,int,int ,int,int,int const**,size_t*,int*) ;
 struct wpabuf const* dpp_alloc_msg (int ,size_t) ;
 int dpp_build_attr_status (struct wpabuf const*,int ) ;
 scalar_t__ dpp_test ;
 scalar_t__ dpp_test_gen_invalid_key (struct wpabuf const*,struct dpp_curve_params const*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf const*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf const* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf const*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int* wpabuf_head_u8 (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int* wpabuf_put (struct wpabuf const*,int) ;
 int wpabuf_put_buf (struct wpabuf const*,struct wpabuf const*) ;
 int wpabuf_put_data (struct wpabuf const*,int const*,int) ;
 int wpabuf_put_le16 (struct wpabuf const*,int) ;
 int wpabuf_put_u8 (struct wpabuf const*,int const) ;

__attribute__((used)) static struct wpabuf *
dpp_pkex_build_commit_reveal_req(struct dpp_pkex *pkex,
     const struct wpabuf *A_pub, const u8 *u)
{
 const struct dpp_curve_params *curve = pkex->own_bi->curve;
 struct wpabuf *msg = ((void*)0);
 size_t clear_len, attr_len;
 struct wpabuf *clear = ((void*)0);
 u8 *wrapped;
 u8 octet;
 const u8 *addr[2];
 size_t len[2];


 clear_len = 4 + 2 * curve->prime_len + 4 + curve->hash_len;
 clear = wpabuf_alloc(clear_len);
 attr_len = 4 + clear_len + AES_BLOCK_SIZE;




 msg = dpp_alloc_msg(DPP_PA_PKEX_COMMIT_REVEAL_REQ, attr_len);
 if (!clear || !msg)
  goto fail;
 wpabuf_put_le16(clear, DPP_ATTR_BOOTSTRAP_KEY);
 wpabuf_put_le16(clear, wpabuf_len(A_pub));
 wpabuf_put_buf(clear, A_pub);
 wpabuf_put_le16(clear, DPP_ATTR_I_AUTH_TAG);
 wpabuf_put_le16(clear, curve->hash_len);
 wpabuf_put_data(clear, u, curve->hash_len);
 addr[0] = wpabuf_head_u8(msg) + 2;
 len[0] = DPP_HDR_LEN;
 octet = 0;
 addr[1] = &octet;
 len[1] = sizeof(octet);
 wpa_hexdump(MSG_DEBUG, "DDP: AES-SIV AD[0]", addr[0], len[0]);
 wpa_hexdump(MSG_DEBUG, "DDP: AES-SIV AD[1]", addr[1], len[1]);

 wpabuf_put_le16(msg, DPP_ATTR_WRAPPED_DATA);
 wpabuf_put_le16(msg, wpabuf_len(clear) + AES_BLOCK_SIZE);
 wrapped = wpabuf_put(msg, wpabuf_len(clear) + AES_BLOCK_SIZE);

 wpa_hexdump_buf(MSG_DEBUG, "DPP: AES-SIV cleartext", clear);
 if (aes_siv_encrypt(pkex->z, curve->hash_len,
       wpabuf_head(clear), wpabuf_len(clear),
       2, addr, len, wrapped) < 0)
  goto fail;
 wpa_hexdump(MSG_DEBUG, "DPP: AES-SIV ciphertext",
      wrapped, wpabuf_len(clear) + AES_BLOCK_SIZE);
out:
 wpabuf_free(clear);
 return msg;

fail:
 wpabuf_free(msg);
 msg = ((void*)0);
 goto out;
}
