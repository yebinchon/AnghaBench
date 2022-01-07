
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int used; } ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int EC_KEY_set_conv_form (int *,int ) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int MSG_ERROR ;
 int POINT_CONVERSION_UNCOMPRESSED ;
 int i2o_ECPublicKey (int *,unsigned char**) ;
 int os_memmove (unsigned char*,unsigned char*,int) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 unsigned char* wpabuf_mhead (struct wpabuf*) ;
 unsigned char* wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * dpp_get_pubkey_point(EVP_PKEY *pkey, int prefix)
{
 int len, res;
 EC_KEY *eckey;
 struct wpabuf *buf;
 unsigned char *pos;

 eckey = EVP_PKEY_get1_EC_KEY(pkey);
 if (!eckey)
  return ((void*)0);
 EC_KEY_set_conv_form(eckey, POINT_CONVERSION_UNCOMPRESSED);
 len = i2o_ECPublicKey(eckey, ((void*)0));
 if (len <= 0) {
  wpa_printf(MSG_ERROR,
      "DDP: Failed to determine public key encoding length");
  EC_KEY_free(eckey);
  return ((void*)0);
 }

 buf = wpabuf_alloc(len);
 if (!buf) {
  EC_KEY_free(eckey);
  return ((void*)0);
 }

 pos = wpabuf_put(buf, len);
 res = i2o_ECPublicKey(eckey, &pos);
 EC_KEY_free(eckey);
 if (res != len) {
  wpa_printf(MSG_ERROR,
      "DDP: Failed to encode public key (res=%d/%d)",
      res, len);
  wpabuf_free(buf);
  return ((void*)0);
 }

 if (!prefix) {

  pos = wpabuf_mhead(buf);
  os_memmove(pos, pos + 1, len - 1);
  buf->used--;
 }

 return buf;
}
