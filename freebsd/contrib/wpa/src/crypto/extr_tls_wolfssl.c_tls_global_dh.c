
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int WOLFSSL_CTX ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int SSL_FILETYPE_ASN1 ;
 int SSL_FILETYPE_PEM ;
 scalar_t__ wolfSSL_CTX_SetTmpDH_buffer (int *,int const*,size_t,int ) ;
 scalar_t__ wolfSSL_CTX_SetTmpDH_file (int *,char const*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_global_dh(void *ssl_ctx, const char *dh_file,
    const u8 *dh_blob, size_t blob_len)
{
 WOLFSSL_CTX *ctx = ssl_ctx;

 if (!dh_file && !dh_blob)
  return 0;

 if (dh_blob) {
  if (wolfSSL_CTX_SetTmpDH_buffer(ctx, dh_blob, blob_len,
      SSL_FILETYPE_ASN1) < 0) {
   wpa_printf(MSG_INFO,
       "SSL: global use DH DER blob failed");
   return -1;
  }
  wpa_printf(MSG_DEBUG, "SSL: global use DH blob OK");
  return 0;
 }

 if (dh_file) {
  if (wolfSSL_CTX_SetTmpDH_file(ctx, dh_file, SSL_FILETYPE_PEM) <
      0) {
   wpa_printf(MSG_INFO,
       "SSL: global use DH PEM file failed");
   if (wolfSSL_CTX_SetTmpDH_file(ctx, dh_file,
            SSL_FILETYPE_ASN1) < 0) {
    wpa_printf(MSG_INFO,
        "SSL: global use DH DER file failed");
    return -1;
   }
  }
  wpa_printf(MSG_DEBUG, "SSL: global use DH file OK");
  return 0;
 }

 return 0;
}
