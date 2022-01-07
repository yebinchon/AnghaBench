
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct dpp_bootstrap_info {int pubkey_hash; int pubkey; } ;


 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 struct wpabuf* dpp_bootstrap_key_der (int ) ;
 int sha256_vector (int,int const**,size_t*,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

int dpp_bootstrap_key_hash(struct dpp_bootstrap_info *bi)
{
 struct wpabuf *der;
 int res;
 const u8 *addr[1];
 size_t len[1];

 der = dpp_bootstrap_key_der(bi->pubkey);
 if (!der)
  return -1;
 wpa_hexdump_buf(MSG_DEBUG, "DPP: Compressed public key (DER)",
   der);

 addr[0] = wpabuf_head(der);
 len[0] = wpabuf_len(der);
 res = sha256_vector(1, addr, len, bi->pubkey_hash);
 if (res < 0)
  wpa_printf(MSG_DEBUG, "DPP: Failed to hash public key");
 else
  wpa_hexdump(MSG_DEBUG, "DPP: Public key hash", bi->pubkey_hash,
       SHA256_MAC_LEN);
 wpabuf_free(der);
 return res;
}
