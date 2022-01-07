
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {void* dec; void* enc; } ;
typedef enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;
typedef int EVP_CIPHER ;







 int EVP_CIPHER_CTX_free (void*) ;
 void* EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_key_length (void*,size_t) ;
 int EVP_CIPHER_CTX_set_padding (void*,int ) ;
 int EVP_DecryptInit_ex (void*,int const*,int *,int const*,int const*) ;
 int EVP_EncryptInit_ex (void*,int const*,int *,int const*,int const*) ;
 int * EVP_aes_128_cbc () ;
 int * EVP_aes_192_cbc () ;
 int * EVP_aes_256_cbc () ;
 int * EVP_des_cbc () ;
 int * EVP_des_ede3_cbc () ;
 int * EVP_rc2_ecb () ;
 int * EVP_rc4 () ;
 int os_free (struct crypto_cipher*) ;
 struct crypto_cipher* os_zalloc (int) ;

struct crypto_cipher * crypto_cipher_init(enum crypto_cipher_alg alg,
       const u8 *iv, const u8 *key,
       size_t key_len)
{
 struct crypto_cipher *ctx;
 const EVP_CIPHER *cipher;

 ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return ((void*)0);

 switch (alg) {


 case 128:
  cipher = EVP_rc4();
  break;



 case 131:
  switch (key_len) {
  case 16:
   cipher = EVP_aes_128_cbc();
   break;

  case 24:
   cipher = EVP_aes_192_cbc();
   break;

  case 32:
   cipher = EVP_aes_256_cbc();
   break;
  default:
   os_free(ctx);
   return ((void*)0);
  }
  break;


 case 132:
  cipher = EVP_des_ede3_cbc();
  break;
 case 130:
  cipher = EVP_des_cbc();
  break;


 case 129:
  cipher = EVP_rc2_ecb();
  break;

 default:
  os_free(ctx);
  return ((void*)0);
 }

 if (!(ctx->enc = EVP_CIPHER_CTX_new()) ||
     !EVP_CIPHER_CTX_set_padding(ctx->enc, 0) ||
     !EVP_EncryptInit_ex(ctx->enc, cipher, ((void*)0), ((void*)0), ((void*)0)) ||
     !EVP_CIPHER_CTX_set_key_length(ctx->enc, key_len) ||
     !EVP_EncryptInit_ex(ctx->enc, ((void*)0), ((void*)0), key, iv)) {
  if (ctx->enc)
   EVP_CIPHER_CTX_free(ctx->enc);
  os_free(ctx);
  return ((void*)0);
 }

 if (!(ctx->dec = EVP_CIPHER_CTX_new()) ||
     !EVP_CIPHER_CTX_set_padding(ctx->dec, 0) ||
     !EVP_DecryptInit_ex(ctx->dec, cipher, ((void*)0), ((void*)0), ((void*)0)) ||
     !EVP_CIPHER_CTX_set_key_length(ctx->dec, key_len) ||
     !EVP_DecryptInit_ex(ctx->dec, ((void*)0), ((void*)0), key, iv)) {
  EVP_CIPHER_CTX_free(ctx->enc);
  if (ctx->dec)
   EVP_CIPHER_CTX_free(ctx->dec);
  os_free(ctx);
  return ((void*)0);
 }

 return ctx;
}
