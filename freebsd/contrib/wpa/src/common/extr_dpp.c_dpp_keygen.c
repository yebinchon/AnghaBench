
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct dpp_bootstrap_info {int own; int pubkey_hash; int pubkey; int * curve; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int SHA256_MAC_LEN ;
 unsigned char* base64_encode (int *,size_t,size_t*) ;
 struct wpabuf* dpp_bootstrap_key_der (int ) ;
 int * dpp_curves ;
 int dpp_gen_keypair (int *) ;
 int * dpp_get_curve_name (char const*) ;
 int dpp_set_keypair (int **,int const*,size_t) ;
 int os_free (unsigned char*) ;
 int os_memmove (char*,char*,int) ;
 char* os_strchr (char*,char) ;
 int sha256_vector (int,int const**,size_t*,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

char * dpp_keygen(struct dpp_bootstrap_info *bi, const char *curve,
    const u8 *privkey, size_t privkey_len)
{
 unsigned char *base64 = ((void*)0);
 char *pos, *end;
 size_t len;
 struct wpabuf *der = ((void*)0);
 const u8 *addr[1];
 int res;

 if (!curve) {
  bi->curve = &dpp_curves[0];
 } else {
  bi->curve = dpp_get_curve_name(curve);
  if (!bi->curve) {
   wpa_printf(MSG_INFO, "DPP: Unsupported curve: %s",
       curve);
   return ((void*)0);
  }
 }
 if (privkey)
  bi->pubkey = dpp_set_keypair(&bi->curve, privkey, privkey_len);
 else
  bi->pubkey = dpp_gen_keypair(bi->curve);
 if (!bi->pubkey)
  goto fail;
 bi->own = 1;

 der = dpp_bootstrap_key_der(bi->pubkey);
 if (!der)
  goto fail;
 wpa_hexdump_buf(MSG_DEBUG, "DPP: Compressed public key (DER)",
   der);

 addr[0] = wpabuf_head(der);
 len = wpabuf_len(der);
 res = sha256_vector(1, addr, &len, bi->pubkey_hash);
 if (res < 0) {
  wpa_printf(MSG_DEBUG, "DPP: Failed to hash public key");
  goto fail;
 }
 wpa_hexdump(MSG_DEBUG, "DPP: Public key hash", bi->pubkey_hash,
      SHA256_MAC_LEN);

 base64 = base64_encode(wpabuf_head(der), wpabuf_len(der), &len);
 wpabuf_free(der);
 der = ((void*)0);
 if (!base64)
  goto fail;
 pos = (char *) base64;
 end = pos + len;
 for (;;) {
  pos = os_strchr(pos, '\n');
  if (!pos)
   break;
  os_memmove(pos, pos + 1, end - pos);
 }
 return (char *) base64;
fail:
 os_free(base64);
 wpabuf_free(der);
 return ((void*)0);
}
