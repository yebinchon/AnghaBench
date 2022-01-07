
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int buf ;
typedef int EVP_CIPHER_CTX ;


 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_CIPHER_CTX_free (int *) ;
 int EVP_EncryptFinal_ex (int *,int *,int*) ;
 int MSG_ERROR ;
 int wpa_printf (int ,char*,int) ;

void aes_encrypt_deinit(void *ctx)
{
 EVP_CIPHER_CTX *c = ctx;
 u8 buf[16];
 int len = sizeof(buf);
 if (EVP_EncryptFinal_ex(c, buf, &len) != 1) {
  wpa_printf(MSG_ERROR, "OpenSSL: EVP_EncryptFinal_ex failed: "
      "%s", ERR_error_string(ERR_get_error(), ((void*)0)));
 }
 if (len != 0) {
  wpa_printf(MSG_ERROR, "OpenSSL: Unexpected padding length %d "
      "in AES encrypt", len);
 }
 EVP_CIPHER_CTX_free(c);
}
