
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int buf ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 size_t DPP_MAX_SHARED_SECRET_LEN ;
 int ERR_clear_error () ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_derive (int *,int *,size_t*) ;
 int EVP_PKEY_derive_init (int *) ;
 int EVP_PKEY_derive_set_peer (int *,int *) ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int forced_memzero (int *,int) ;
 int os_memcpy (int *,int *,size_t) ;
 int wpa_hexdump_key (int,char*,int *,size_t) ;
 int wpa_printf (int,char*,int) ;

__attribute__((used)) static int dpp_ecdh(EVP_PKEY *own, EVP_PKEY *peer,
      u8 *secret, size_t *secret_len)
{
 EVP_PKEY_CTX *ctx;
 int ret = -1;

 ERR_clear_error();
 *secret_len = 0;

 ctx = EVP_PKEY_CTX_new(own, ((void*)0));
 if (!ctx) {
  wpa_printf(MSG_ERROR, "DPP: EVP_PKEY_CTX_new failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  return -1;
 }

 if (EVP_PKEY_derive_init(ctx) != 1) {
  wpa_printf(MSG_ERROR, "DPP: EVP_PKEY_derive_init failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }

 if (EVP_PKEY_derive_set_peer(ctx, peer) != 1) {
  wpa_printf(MSG_ERROR,
      "DPP: EVP_PKEY_derive_set_peet failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }

 if (EVP_PKEY_derive(ctx, ((void*)0), secret_len) != 1) {
  wpa_printf(MSG_ERROR, "DPP: EVP_PKEY_derive(NULL) failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }

 if (*secret_len > DPP_MAX_SHARED_SECRET_LEN) {
  u8 buf[200];
  int level = *secret_len > 200 ? MSG_ERROR : MSG_DEBUG;
  wpa_printf(level,
      "DPP: Unexpected secret_len=%d from EVP_PKEY_derive()",
      (int) *secret_len);
  if (*secret_len > 200)
   goto fail;
  if (EVP_PKEY_derive(ctx, buf, secret_len) != 1) {
   wpa_printf(MSG_ERROR, "DPP: EVP_PKEY_derive failed: %s",
       ERR_error_string(ERR_get_error(), ((void*)0)));
   goto fail;
  }
  if (*secret_len > DPP_MAX_SHARED_SECRET_LEN) {
   wpa_printf(MSG_ERROR,
       "DPP: Unexpected secret_len=%d from EVP_PKEY_derive()",
       (int) *secret_len);
   goto fail;
  }
  wpa_hexdump_key(MSG_DEBUG, "DPP: Unexpected secret_len change",
    buf, *secret_len);
  os_memcpy(secret, buf, *secret_len);
  forced_memzero(buf, sizeof(buf));
  goto done;
 }

 if (EVP_PKEY_derive(ctx, secret, secret_len) != 1) {
  wpa_printf(MSG_ERROR, "DPP: EVP_PKEY_derive failed: %s",
      ERR_error_string(ERR_get_error(), ((void*)0)));
  goto fail;
 }

done:
 ret = 0;

fail:
 EVP_PKEY_CTX_free(ctx);
 return ret;
}
