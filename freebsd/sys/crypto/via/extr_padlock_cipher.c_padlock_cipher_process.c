
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union padlock_cw {int cw_direction; scalar_t__ cw_filler3; scalar_t__ cw_filler2; scalar_t__ cw_filler1; scalar_t__ cw_filler0; } ;
typedef int uint32_t ;
typedef int u_char ;
struct thread {int dummy; } ;
struct padlock_session {int * ses_iv; int ses_fpu_ctx; int * ses_dkey; int * ses_ekey; union padlock_cw ses_cw; } ;
struct cryptop {int crp_buf; int crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_len; scalar_t__ crd_skip; scalar_t__ crd_inject; int crd_iv; int crd_klen; int crd_key; } ;


 int AES_BLOCK_LEN ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRD_F_KEY_EXPLICIT ;
 int ENOMEM ;
 int FPU_KERN_KTHR ;
 int FPU_KERN_NORMAL ;
 int M_PADLOCK ;
 int * PADLOCK_ALIGN (int *) ;
 int PADLOCK_DIRECTION_DECRYPT ;
 int PADLOCK_DIRECTION_ENCRYPT ;
 int bcopy (int ,int *,int) ;
 int bzero (int *,int) ;
 int crypto_copyback (int ,int ,scalar_t__,int,int *) ;
 int crypto_copydata (int ,int ,scalar_t__,int,int *) ;
 struct thread* curthread ;
 int fpu_kern_enter (struct thread*,int ,int) ;
 int fpu_kern_leave (struct thread*,int ) ;
 int free (int *,int ) ;
 int padlock_cbc (int *,int *,int,int *,union padlock_cw*,int *) ;
 int * padlock_cipher_alloc (struct cryptodesc*,struct cryptop*,int*) ;
 int padlock_cipher_key_setup (struct padlock_session*,int ,int ) ;

int
padlock_cipher_process(struct padlock_session *ses, struct cryptodesc *enccrd,
    struct cryptop *crp)
{
 union padlock_cw *cw;
 struct thread *td;
 u_char *buf, *abuf;
 uint32_t *key;
 int allocated;

 buf = padlock_cipher_alloc(enccrd, crp, &allocated);
 if (buf == ((void*)0))
  return (ENOMEM);

 abuf = PADLOCK_ALIGN(buf);

 if ((enccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0) {
  padlock_cipher_key_setup(ses, enccrd->crd_key,
      enccrd->crd_klen);
 }

 cw = &ses->ses_cw;
 cw->cw_filler0 = 0;
 cw->cw_filler1 = 0;
 cw->cw_filler2 = 0;
 cw->cw_filler3 = 0;
 if ((enccrd->crd_flags & CRD_F_ENCRYPT) != 0) {
  cw->cw_direction = PADLOCK_DIRECTION_ENCRYPT;
  key = ses->ses_ekey;
  if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
   bcopy(enccrd->crd_iv, ses->ses_iv, AES_BLOCK_LEN);

  if ((enccrd->crd_flags & CRD_F_IV_PRESENT) == 0) {
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       enccrd->crd_inject, AES_BLOCK_LEN, ses->ses_iv);
  }
 } else {
  cw->cw_direction = PADLOCK_DIRECTION_DECRYPT;
  key = ses->ses_dkey;
  if ((enccrd->crd_flags & CRD_F_IV_EXPLICIT) != 0)
   bcopy(enccrd->crd_iv, ses->ses_iv, AES_BLOCK_LEN);
  else {
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       enccrd->crd_inject, AES_BLOCK_LEN, ses->ses_iv);
  }
 }

 if (allocated) {
  crypto_copydata(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
      enccrd->crd_len, abuf);
 }

 td = curthread;
 fpu_kern_enter(td, ses->ses_fpu_ctx, FPU_KERN_NORMAL | FPU_KERN_KTHR);
 padlock_cbc(abuf, abuf, enccrd->crd_len / AES_BLOCK_LEN, key, cw,
     ses->ses_iv);
 fpu_kern_leave(td, ses->ses_fpu_ctx);

 if (allocated) {
  crypto_copyback(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
      enccrd->crd_len, abuf);
 }


 if ((enccrd->crd_flags & CRD_F_ENCRYPT) != 0) {
  crypto_copydata(crp->crp_flags, crp->crp_buf,
      enccrd->crd_skip + enccrd->crd_len - AES_BLOCK_LEN,
      AES_BLOCK_LEN, ses->ses_iv);
 }

 if (allocated) {
  bzero(buf, enccrd->crd_len + 16);
  free(buf, M_PADLOCK);
 }
 return (0);
}
