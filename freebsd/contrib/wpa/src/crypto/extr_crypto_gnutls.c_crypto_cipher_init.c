
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dec; int enc; } ;
typedef scalar_t__ gcry_error_t ;
typedef enum gcry_cipher_algos { ____Placeholder_gcry_cipher_algos } gcry_cipher_algos ;
typedef enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;







 int GCRY_CIPHER_3DES ;
 int GCRY_CIPHER_AES ;
 int GCRY_CIPHER_AES192 ;
 int GCRY_CIPHER_AES256 ;
 int GCRY_CIPHER_ARCFOUR ;
 int GCRY_CIPHER_DES ;
 int GCRY_CIPHER_MODE_CBC ;
 int GCRY_CIPHER_MODE_STREAM ;
 int GCRY_CIPHER_RFC2268_128 ;
 int GCRY_CIPHER_RFC2268_40 ;
 scalar_t__ GPG_ERR_NO_ERROR ;
 int gcry_cipher_close (int ) ;
 int gcry_cipher_get_algo_blklen (int) ;
 scalar_t__ gcry_cipher_open (int *,int,int ,int ) ;
 scalar_t__ gcry_cipher_setiv (int ,int const*,int) ;
 scalar_t__ gcry_cipher_setkey (int ,int const*,size_t) ;
 int os_free (struct crypto_cipher*) ;
 struct crypto_cipher* os_zalloc (int) ;

struct crypto_cipher * crypto_cipher_init(enum crypto_cipher_alg alg,
       const u8 *iv, const u8 *key,
       size_t key_len)
{
 struct crypto_cipher *ctx;
 gcry_error_t res;
 enum gcry_cipher_algos a;
 int ivlen;

 ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return ((void*)0);

 switch (alg) {
 case 128:
  a = GCRY_CIPHER_ARCFOUR;
  res = gcry_cipher_open(&ctx->enc, a, GCRY_CIPHER_MODE_STREAM,
           0);
  gcry_cipher_open(&ctx->dec, a, GCRY_CIPHER_MODE_STREAM, 0);
  break;
 case 131:
  if (key_len == 24)
   a = GCRY_CIPHER_AES192;
  else if (key_len == 32)
   a = GCRY_CIPHER_AES256;
  else
   a = GCRY_CIPHER_AES;
  res = gcry_cipher_open(&ctx->enc, a, GCRY_CIPHER_MODE_CBC, 0);
  gcry_cipher_open(&ctx->dec, a, GCRY_CIPHER_MODE_CBC, 0);
  break;
 case 132:
  a = GCRY_CIPHER_3DES;
  res = gcry_cipher_open(&ctx->enc, a, GCRY_CIPHER_MODE_CBC, 0);
  gcry_cipher_open(&ctx->dec, a, GCRY_CIPHER_MODE_CBC, 0);
  break;
 case 130:
  a = GCRY_CIPHER_DES;
  res = gcry_cipher_open(&ctx->enc, a, GCRY_CIPHER_MODE_CBC, 0);
  gcry_cipher_open(&ctx->dec, a, GCRY_CIPHER_MODE_CBC, 0);
  break;
 case 129:
  if (key_len == 5)
   a = GCRY_CIPHER_RFC2268_40;
  else
   a = GCRY_CIPHER_RFC2268_128;
  res = gcry_cipher_open(&ctx->enc, a, GCRY_CIPHER_MODE_CBC, 0);
  gcry_cipher_open(&ctx->dec, a, GCRY_CIPHER_MODE_CBC, 0);
  break;
 default:
  os_free(ctx);
  return ((void*)0);
 }

 if (res != GPG_ERR_NO_ERROR) {
  os_free(ctx);
  return ((void*)0);
 }

 if (gcry_cipher_setkey(ctx->enc, key, key_len) != GPG_ERR_NO_ERROR ||
     gcry_cipher_setkey(ctx->dec, key, key_len) != GPG_ERR_NO_ERROR) {
  gcry_cipher_close(ctx->enc);
  gcry_cipher_close(ctx->dec);
  os_free(ctx);
  return ((void*)0);
 }

 ivlen = gcry_cipher_get_algo_blklen(a);
 if (gcry_cipher_setiv(ctx->enc, iv, ivlen) != GPG_ERR_NO_ERROR ||
     gcry_cipher_setiv(ctx->dec, iv, ivlen) != GPG_ERR_NO_ERROR) {
  gcry_cipher_close(ctx->enc);
  gcry_cipher_close(ctx->dec);
  os_free(ctx);
  return ((void*)0);
 }

 return ctx;
}
