
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_hash {int ctx; } ;
typedef enum crypto_hash_alg { ____Placeholder_crypto_hash_alg } crypto_hash_alg ;
typedef int EVP_MD ;





 int * EVP_md5 () ;
 int * EVP_sha1 () ;
 int * EVP_sha256 () ;
 int HMAC_CTX_free (int ) ;
 int HMAC_CTX_new () ;
 int HMAC_Init_ex (int ,int const*,size_t,int const*,int *) ;
 int bin_clear_free (struct crypto_hash*,int) ;
 int os_free (struct crypto_hash*) ;
 struct crypto_hash* os_zalloc (int) ;

struct crypto_hash * crypto_hash_init(enum crypto_hash_alg alg, const u8 *key,
          size_t key_len)
{
 struct crypto_hash *ctx;
 const EVP_MD *md;

 switch (alg) {

 case 130:
  md = EVP_md5();
  break;


 case 129:
  md = EVP_sha1();
  break;
 default:
  return ((void*)0);
 }

 ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return ((void*)0);
 ctx->ctx = HMAC_CTX_new();
 if (!ctx->ctx) {
  os_free(ctx);
  return ((void*)0);
 }

 if (HMAC_Init_ex(ctx->ctx, key, key_len, md, ((void*)0)) != 1) {
  HMAC_CTX_free(ctx->ctx);
  bin_clear_free(ctx, sizeof(*ctx));
  return ((void*)0);
 }

 return ctx;
}
