
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshcipher_ctx {int evp; struct sshcipher* cipher; } ;
struct sshcipher {int flags; scalar_t__ evptype; } ;


 int CFLAG_CHACHAPOLY ;
 int CFLAG_NONE ;
 int EVP_CIPHER_CTX_ctrl (int ,int ,int,void*) ;
 int EVP_CIPHER_CTX_iv_length (int ) ;
 int EVP_CIPHER_CTX_set_iv (int ,int const*,int) ;
 int EVP_CTRL_GCM_SET_IV_FIXED ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 scalar_t__ cipher_authlen (struct sshcipher const*) ;
 scalar_t__ evp_aes_128_ctr ;
 int ssh_aes_ctr_iv (int ,int,int *,int) ;

int
cipher_set_keyiv(struct sshcipher_ctx *cc, const u_char *iv, size_t len)
{





 if ((cc->cipher->flags & CFLAG_CHACHAPOLY) != 0)
  return 0;
 if ((cc->cipher->flags & CFLAG_NONE) != 0)
  return 0;
 return 0;
}
