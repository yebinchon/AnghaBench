
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshcipher_ctx {int plaintext; int encrypt; int * evp; int ac_ctx; struct sshcipher const* cipher; int cp_ctx; } ;
struct sshcipher {int flags; int key_len; int * (* evptype ) () ;} ;
typedef int EVP_CIPHER ;


 int CFLAG_AESCTR ;
 int CFLAG_CHACHAPOLY ;
 int CFLAG_NONE ;
 int CIPHER_ENCRYPT ;
 int EVP_CIPHER_CTX_ctrl (int *,int ,int,int *) ;
 int EVP_CIPHER_CTX_free (int *) ;
 int EVP_CIPHER_CTX_key_length (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 scalar_t__ EVP_CIPHER_CTX_set_key_length (int *,int) ;
 int EVP_CTRL_GCM_SET_IV_FIXED ;
 scalar_t__ EVP_CipherInit (int *,int const*,int *,int *,int) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int aesctr_ivsetup (int *,int const*) ;
 int aesctr_keysetup (int *,int const*,int,int) ;
 struct sshcipher_ctx* calloc (int,int) ;
 int chachapoly_init (int *,int const*,int) ;
 scalar_t__ cipher_authlen (struct sshcipher const*) ;
 int cipher_ivlen (struct sshcipher const*) ;
 int explicit_bzero (struct sshcipher_ctx*,int) ;
 int free (struct sshcipher_ctx*) ;
 int * stub1 () ;

int
cipher_init(struct sshcipher_ctx **ccp, const struct sshcipher *cipher,
    const u_char *key, u_int keylen, const u_char *iv, u_int ivlen,
    int do_encrypt)
{
 struct sshcipher_ctx *cc = ((void*)0);
 int ret = SSH_ERR_INTERNAL_ERROR;





 *ccp = ((void*)0);
 if ((cc = calloc(sizeof(*cc), 1)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;

 cc->plaintext = (cipher->flags & CFLAG_NONE) != 0;
 cc->encrypt = do_encrypt;

 if (keylen < cipher->key_len ||
     (iv != ((void*)0) && ivlen < cipher_ivlen(cipher))) {
  ret = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }

 cc->cipher = cipher;
 if ((cc->cipher->flags & CFLAG_CHACHAPOLY) != 0) {
  ret = chachapoly_init(&cc->cp_ctx, key, keylen);
  goto out;
 }
 if ((cc->cipher->flags & CFLAG_NONE) != 0) {
  ret = 0;
  goto out;
 }

 if ((cc->cipher->flags & CFLAG_AESCTR) != 0) {
  aesctr_keysetup(&cc->ac_ctx, key, 8 * keylen, 8 * ivlen);
  aesctr_ivsetup(&cc->ac_ctx, iv);
  ret = 0;
  goto out;
 }
 ret = SSH_ERR_INVALID_ARGUMENT;
 goto out;
 out:
 if (ret == 0) {

  *ccp = cc;
 } else {
  if (cc != ((void*)0)) {



   explicit_bzero(cc, sizeof(*cc));
   free(cc);
  }
 }
 return ret;
}
