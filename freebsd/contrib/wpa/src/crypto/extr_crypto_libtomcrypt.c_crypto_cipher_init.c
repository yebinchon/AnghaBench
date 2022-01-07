
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {size_t keylen; int key; } ;
struct TYPE_4__ {int cbc; TYPE_1__ rc4; } ;
struct crypto_cipher {int rc4; TYPE_2__ u; } ;
typedef enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;







 int CRYPT_OK ;
 int MSG_DEBUG ;
 int cbc_start (int,int const*,int const*,size_t,int ,int *) ;
 int error_to_string (int) ;
 int find_cipher (char*) ;
 int os_free (struct crypto_cipher*) ;
 int os_memcpy (int ,int const*,size_t) ;
 struct crypto_cipher* os_zalloc (int) ;
 int wpa_printf (int ,char*,int ) ;

struct crypto_cipher * crypto_cipher_init(enum crypto_cipher_alg alg,
       const u8 *iv, const u8 *key,
       size_t key_len)
{
 struct crypto_cipher *ctx;
 int idx, res, rc4 = 0;

 switch (alg) {
 case 131:
  idx = find_cipher("aes");
  break;
 case 132:
  idx = find_cipher("3des");
  break;
 case 130:
  idx = find_cipher("des");
  break;
 case 129:
  idx = find_cipher("rc2");
  break;
 case 128:
  idx = -1;
  rc4 = 1;
  break;
 default:
  return ((void*)0);
 }

 ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return ((void*)0);

 if (rc4) {
  ctx->rc4 = 1;
  if (key_len > sizeof(ctx->u.rc4.key)) {
   os_free(ctx);
   return ((void*)0);
  }
  ctx->u.rc4.keylen = key_len;
  os_memcpy(ctx->u.rc4.key, key, key_len);
 } else {
  res = cbc_start(idx, iv, key, key_len, 0, &ctx->u.cbc);
  if (res != CRYPT_OK) {
   wpa_printf(MSG_DEBUG, "LibTomCrypt: Cipher start "
       "failed: %s", error_to_string(res));
   os_free(ctx);
   return ((void*)0);
  }
 }

 return ctx;
}
