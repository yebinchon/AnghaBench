
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpu_kern_ctx {int dummy; } ;
struct cryptop {int crp_buf; int crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {scalar_t__ crd_flags; int crd_inject; int crd_len; int crd_skip; } ;
struct blake2_session {int algo; size_t mlen; int klen; int key; } ;
typedef int blake2s_state ;
typedef int blake2b_state ;


 int ACQUIRE_CTX (int,struct fpu_kern_ctx*) ;
 int BLAKE2B_OUTBYTES ;
 size_t BLAKE2S_OUTBYTES ;


 int EINVAL ;
 int FPU_KERN_KTHR ;
 int FPU_KERN_NORMAL ;
 int RELEASE_CTX (int,struct fpu_kern_ctx*) ;
 int blake2b_applicator ;
 int blake2b_final (int *,char*,size_t) ;
 int blake2b_init (int *,size_t) ;
 int blake2b_init_key (int *,size_t,int ,int ) ;
 int blake2s_applicator ;
 int blake2s_final (int *,char*,size_t) ;
 int blake2s_init (int *,size_t) ;
 int blake2s_init_key (int *,size_t,int ,int ) ;
 int crypto_apply (int ,int ,int ,int ,int ,int *) ;
 int crypto_copyback (int ,int ,int ,size_t,void*) ;
 int curthread ;
 int fpu_kern_enter (int ,struct fpu_kern_ctx*,int) ;
 int fpu_kern_leave (int ,struct fpu_kern_ctx*) ;
 int is_fpu_kern_thread (int ) ;
 int panic (char*) ;

__attribute__((used)) static int
blake2_cipher_process(struct blake2_session *ses, struct cryptop *crp)
{
 union {
  blake2b_state sb;
  blake2s_state ss;
 } bctx;
 char res[BLAKE2B_OUTBYTES];
 struct fpu_kern_ctx *ctx;
 int ctxidx;
 bool kt;
 struct cryptodesc *crd;
 int error, rc;
 size_t hashlen;

 crd = crp->crp_desc;
 ctx = ((void*)0);
 ctxidx = 0;
 error = EINVAL;

 kt = is_fpu_kern_thread(0);
 if (!kt) {
  ACQUIRE_CTX(ctxidx, ctx);
  fpu_kern_enter(curthread, ctx,
      FPU_KERN_NORMAL | FPU_KERN_KTHR);
 }

 if (crd->crd_flags != 0)
  goto out;

 switch (ses->algo) {
 case 129:
  if (ses->mlen != 0)
   hashlen = ses->mlen;
  else
   hashlen = BLAKE2B_OUTBYTES;
  if (ses->klen > 0)
   rc = blake2b_init_key(&bctx.sb, hashlen, ses->key, ses->klen);
  else
   rc = blake2b_init(&bctx.sb, hashlen);
  if (rc != 0)
   goto out;
  error = crypto_apply(crp->crp_flags, crp->crp_buf, crd->crd_skip,
      crd->crd_len, blake2b_applicator, &bctx.sb);
  if (error != 0)
   goto out;
  rc = blake2b_final(&bctx.sb, res, hashlen);
  if (rc != 0) {
   error = EINVAL;
   goto out;
  }
  break;
 case 128:
  if (ses->mlen != 0)
   hashlen = ses->mlen;
  else
   hashlen = BLAKE2S_OUTBYTES;
  if (ses->klen > 0)
   rc = blake2s_init_key(&bctx.ss, hashlen, ses->key, ses->klen);
  else
   rc = blake2s_init(&bctx.ss, hashlen);
  if (rc != 0)
   goto out;
  error = crypto_apply(crp->crp_flags, crp->crp_buf, crd->crd_skip,
      crd->crd_len, blake2s_applicator, &bctx.ss);
  if (error != 0)
   goto out;
  rc = blake2s_final(&bctx.ss, res, hashlen);
  if (rc != 0) {
   error = EINVAL;
   goto out;
  }
  break;
 default:
  panic("unreachable");
 }

 crypto_copyback(crp->crp_flags, crp->crp_buf, crd->crd_inject, hashlen,
     (void *)res);

out:
 if (!kt) {
  fpu_kern_leave(curthread, ctx);
  RELEASE_CTX(ctxidx, ctx);
 }
 return (error);
}
