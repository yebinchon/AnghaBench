
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct sshcipher_ctx {int evp; scalar_t__ encrypt; TYPE_1__* cipher; int ac_ctx; int cp_ctx; } ;
struct TYPE_2__ {int flags; int block_size; } ;


 int CFLAG_AESCTR ;
 int CFLAG_CHACHAPOLY ;
 int CFLAG_NONE ;
 int EVP_CIPHER_CTX_ctrl (int ,int ,int,int *) ;
 int EVP_CTRL_GCM_GET_TAG ;
 int EVP_CTRL_GCM_IV_GEN ;
 int EVP_CTRL_GCM_SET_TAG ;
 scalar_t__ EVP_Cipher (int ,int *,int *,int) ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_MAC_INVALID ;
 int aesctr_encrypt_bytes (int *,int const*,int *,int) ;
 int chachapoly_crypt (int *,int,int *,int const*,int,int,int,scalar_t__) ;
 int cipher_authlen (TYPE_1__*) ;
 int memcpy (int *,int const*,int) ;

int
cipher_crypt(struct sshcipher_ctx *cc, u_int seqnr, u_char *dest,
   const u_char *src, u_int len, u_int aadlen, u_int authlen)
{
 if ((cc->cipher->flags & CFLAG_CHACHAPOLY) != 0) {
  return chachapoly_crypt(&cc->cp_ctx, seqnr, dest, src,
      len, aadlen, authlen, cc->encrypt);
 }
 if ((cc->cipher->flags & CFLAG_NONE) != 0) {
  memcpy(dest, src, aadlen + len);
  return 0;
 }

 if ((cc->cipher->flags & CFLAG_AESCTR) != 0) {
  if (aadlen)
   memcpy(dest, src, aadlen);
  aesctr_encrypt_bytes(&cc->ac_ctx, src + aadlen,
      dest + aadlen, len);
  return 0;
 }
 return SSH_ERR_INVALID_ARGUMENT;
}
