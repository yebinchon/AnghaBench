
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fpu_kern_ctx {int dummy; } ;
struct cryptop {int crp_buf; int crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_alg; int crd_len; int crd_skip; int crd_inject; int crd_iv; } ;
struct armv8_crypto_session {int algo; int dec_schedule; int rounds; int enc_schedule; } ;


 int AES_BLOCK_LEN ;
 int AQUIRE_CTX (int,struct fpu_kern_ctx*) ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRD_F_KEY_EXPLICIT ;

 int ENOMEM ;
 int FPU_KERN_KTHR ;
 int FPU_KERN_NORMAL ;
 int M_ARMV8_CRYPTO ;
 int RELEASE_CTX (int,struct fpu_kern_ctx*) ;
 int arc4rand (int *,int,int ) ;
 int armv8_aes_decrypt_cbc (int ,int ,int,int *,int *) ;
 int armv8_aes_encrypt_cbc (int ,int ,int,int *,int *,int *) ;
 int * armv8_crypto_cipher_alloc (struct cryptodesc*,struct cryptop*,int*) ;
 int bcopy (int ,int *,int) ;
 int bzero (int *,int) ;
 int crypto_copyback (int ,int ,int ,int,int *) ;
 int crypto_copydata (int ,int ,int ,int,int *) ;
 int curthread ;
 int fpu_kern_enter (int ,struct fpu_kern_ctx*,int) ;
 int fpu_kern_leave (int ,struct fpu_kern_ctx*) ;
 int free (int *,int ) ;
 int is_fpu_kern_thread (int ) ;
 int panic (char*) ;

__attribute__((used)) static int
armv8_crypto_cipher_process(struct armv8_crypto_session *ses,
    struct cryptodesc *enccrd, struct cryptop *crp)
{
 struct fpu_kern_ctx *ctx;
 uint8_t *buf;
 uint8_t iv[AES_BLOCK_LEN];
 int allocated, i;
 int encflag, ivlen;
 int kt;

 encflag = (enccrd->crd_flags & CRD_F_ENCRYPT) == CRD_F_ENCRYPT;

 buf = armv8_crypto_cipher_alloc(enccrd, crp, &allocated);
 if (buf == ((void*)0))
  return (ENOMEM);

 kt = is_fpu_kern_thread(0);
 if (!kt) {
  AQUIRE_CTX(i, ctx);
  fpu_kern_enter(curthread, ctx,
      FPU_KERN_NORMAL | FPU_KERN_KTHR);
 }

 if ((enccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0) {
  panic("CRD_F_KEY_EXPLICIT");
 }

 switch (enccrd->crd_alg) {
 case 128:
  ivlen = AES_BLOCK_LEN;
  break;
 }


 if (encflag) {
  if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
   bcopy(enccrd->crd_iv, iv, ivlen);
  else
   arc4rand(iv, ivlen, 0);

  if ((enccrd->crd_flags & CRD_F_IV_PRESENT) == 0)
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       enccrd->crd_inject, ivlen, iv);
 } else {
  if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
   bcopy(enccrd->crd_iv, iv, ivlen);
  else
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       enccrd->crd_inject, ivlen, iv);
 }


 switch (ses->algo) {
 case 128:
  if (encflag)
   armv8_aes_encrypt_cbc(ses->rounds, ses->enc_schedule,
       enccrd->crd_len, buf, buf, iv);
  else
   armv8_aes_decrypt_cbc(ses->rounds, ses->dec_schedule,
       enccrd->crd_len, buf, iv);
  break;
 }

 if (allocated)
  crypto_copyback(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
      enccrd->crd_len, buf);

 if (!kt) {
  fpu_kern_leave(curthread, ctx);
  RELEASE_CTX(i, ctx);
 }
 if (allocated) {
  bzero(buf, enccrd->crd_len);
  free(buf, M_ARMV8_CRYPTO);
 }
 return (0);
}
