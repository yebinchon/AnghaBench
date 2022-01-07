
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int BIO ;


 size_t BIO_ctrl_pending (int *) ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_read (int *,char*,size_t) ;
 int BIO_s_mem () ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_public_key (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int EVP_PKEY_print_private (int *,int *,int ,int *) ;
 int MSG_DEBUG ;
 int OPENSSL_free (unsigned char*) ;
 int dpp_debug_print_point (char const*,int const*,int const*) ;
 int i2d_ECPrivateKey (int *,unsigned char**) ;
 int i2d_EC_PUBKEY (int *,unsigned char**) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int wpa_hexdump (int ,char*,unsigned char*,int) ;
 int wpa_hexdump_key (int ,char*,unsigned char*,int) ;
 int wpa_printf (int ,char*,char const*,char*) ;

__attribute__((used)) static void dpp_debug_print_key(const char *title, EVP_PKEY *key)
{
 EC_KEY *eckey;
 BIO *out;
 size_t rlen;
 char *txt;
 int res;
 unsigned char *der = ((void*)0);
 int der_len;
 const EC_GROUP *group;
 const EC_POINT *point;

 out = BIO_new(BIO_s_mem());
 if (!out)
  return;

 EVP_PKEY_print_private(out, key, 0, ((void*)0));
 rlen = BIO_ctrl_pending(out);
 txt = os_malloc(rlen + 1);
 if (txt) {
  res = BIO_read(out, txt, rlen);
  if (res > 0) {
   txt[res] = '\0';
   wpa_printf(MSG_DEBUG, "%s: %s", title, txt);
  }
  os_free(txt);
 }
 BIO_free(out);

 eckey = EVP_PKEY_get1_EC_KEY(key);
 if (!eckey)
  return;

 group = EC_KEY_get0_group(eckey);
 point = EC_KEY_get0_public_key(eckey);
 if (group && point)
  dpp_debug_print_point(title, group, point);

 der_len = i2d_ECPrivateKey(eckey, &der);
 if (der_len > 0)
  wpa_hexdump_key(MSG_DEBUG, "DPP: ECPrivateKey", der, der_len);
 OPENSSL_free(der);
 if (der_len <= 0) {
  der = ((void*)0);
  der_len = i2d_EC_PUBKEY(eckey, &der);
  if (der_len > 0)
   wpa_hexdump(MSG_DEBUG, "DPP: EC_PUBKEY", der, der_len);
  OPENSSL_free(der);
 }

 EC_KEY_free(eckey);
}
