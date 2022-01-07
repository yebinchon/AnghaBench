
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const u8 ;
struct TYPE_4__ {size_t used_bytes; int keylen; int key; } ;
struct TYPE_3__ {int cbc; TYPE_2__ rc4; } ;
struct crypto_cipher {TYPE_1__ u; scalar_t__ rc4; } ;


 int CRYPT_OK ;
 int MSG_DEBUG ;
 int cbc_encrypt (int const*,int const*,size_t,int *) ;
 int error_to_string (int) ;
 int os_memcpy (int const*,int const*,size_t) ;
 int rc4_skip (int ,int ,size_t,int const*,size_t) ;
 int wpa_printf (int ,char*,int ) ;

int crypto_cipher_encrypt(struct crypto_cipher *ctx, const u8 *plain,
     u8 *crypt, size_t len)
{
 int res;

 if (ctx->rc4) {
  if (plain != crypt)
   os_memcpy(crypt, plain, len);
  rc4_skip(ctx->u.rc4.key, ctx->u.rc4.keylen,
    ctx->u.rc4.used_bytes, crypt, len);
  ctx->u.rc4.used_bytes += len;
  return 0;
 }

 res = cbc_encrypt(plain, crypt, len, &ctx->u.cbc);
 if (res != CRYPT_OK) {
  wpa_printf(MSG_DEBUG, "LibTomCrypt: CBC encryption "
      "failed: %s", error_to_string(res));
  return -1;
 }
 return 0;
}
