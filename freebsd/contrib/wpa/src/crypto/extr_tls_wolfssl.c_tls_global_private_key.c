
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WOLFSSL_CTX ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int SSL_FILETYPE_ASN1 ;
 int SSL_FILETYPE_PEM ;
 int os_free (char*) ;
 char* os_strdup (char const*) ;
 int * tls_passwd_cb ;
 int wolfSSL_CTX_set_default_passwd_cb (int *,int *) ;
 int wolfSSL_CTX_set_default_passwd_cb_userdata (int *,char*) ;
 int wolfSSL_CTX_use_PrivateKey_file (int *,char const*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_global_private_key(void *ssl_ctx, const char *private_key,
      const char *private_key_passwd)
{
 WOLFSSL_CTX *ctx = ssl_ctx;
 char *passwd = ((void*)0);
 int ret = 0;

 if (!private_key)
  return 0;

 if (private_key_passwd) {
  passwd = os_strdup(private_key_passwd);
  if (!passwd)
   return -1;
 }

 wolfSSL_CTX_set_default_passwd_cb(ctx, tls_passwd_cb);
 wolfSSL_CTX_set_default_passwd_cb_userdata(ctx, passwd);

 if (wolfSSL_CTX_use_PrivateKey_file(ctx, private_key,
         SSL_FILETYPE_ASN1) != 1 &&
     wolfSSL_CTX_use_PrivateKey_file(ctx, private_key,
         SSL_FILETYPE_PEM) != 1) {
  wpa_printf(MSG_INFO, "Failed to load private key");
  ret = -1;
 }

 wpa_printf(MSG_DEBUG, "SSL: Loaded global private key");

 os_free(passwd);
 wolfSSL_CTX_set_default_passwd_cb(ctx, ((void*)0));

 return ret;
}
