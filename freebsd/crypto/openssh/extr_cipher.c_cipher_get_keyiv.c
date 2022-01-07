
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int ctr; } ;
struct sshcipher_ctx {int evp; struct sshcipher* cipher; TYPE_1__ ac_ctx; } ;
struct sshcipher {int flags; scalar_t__ evptype; } ;


 int CFLAG_AESCTR ;
 int CFLAG_CHACHAPOLY ;
 int CFLAG_NONE ;
 int EVP_CIPHER_CTX_ctrl (int ,int ,size_t,int *) ;
 int EVP_CIPHER_CTX_get_iv (int ,int *,size_t) ;
 int EVP_CIPHER_CTX_iv_length (int ) ;
 int EVP_CTRL_GCM_IV_GEN ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 scalar_t__ cipher_authlen (struct sshcipher const*) ;
 scalar_t__ evp_aes_128_ctr ;
 int memcpy (int *,int ,size_t) ;
 int ssh_aes_ctr_iv (int ,int ,int *,size_t) ;

int
cipher_get_keyiv(struct sshcipher_ctx *cc, u_char *iv, size_t len)
{





 if ((cc->cipher->flags & CFLAG_CHACHAPOLY) != 0) {
  if (len != 0)
   return SSH_ERR_INVALID_ARGUMENT;
  return 0;
 }
 if ((cc->cipher->flags & CFLAG_AESCTR) != 0) {
  if (len != sizeof(cc->ac_ctx.ctr))
   return SSH_ERR_INVALID_ARGUMENT;
  memcpy(iv, cc->ac_ctx.ctr, len);
  return 0;
 }
 if ((cc->cipher->flags & CFLAG_NONE) != 0)
  return 0;
 return 0;
}
