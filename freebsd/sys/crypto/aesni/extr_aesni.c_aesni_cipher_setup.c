
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpu_kern_ctx {int dummy; } ;
struct cryptoini {int cri_klen; int cri_key; int cri_mlen; } ;
struct aesni_session {int auth_algo; int mlen; } ;


 int ACQUIRE_CTX (int,struct fpu_kern_ctx*) ;






 int FPU_KERN_KTHR ;
 int FPU_KERN_NORMAL ;
 int RELEASE_CTX (int,struct fpu_kern_ctx*) ;
 int aesni_authprepare (struct aesni_session*,int ,int ) ;
 int aesni_cipher_setup_common (struct aesni_session*,int ,int ) ;
 int curthread ;
 int fpu_kern_enter (int ,struct fpu_kern_ctx*,int) ;
 int fpu_kern_leave (int ,struct fpu_kern_ctx*) ;
 scalar_t__ is_fpu_kern_thread (int ) ;

__attribute__((used)) static int
aesni_cipher_setup(struct aesni_session *ses, struct cryptoini *encini,
    struct cryptoini *authini)
{
 struct fpu_kern_ctx *ctx;
 int kt, ctxidx, error;

 switch (ses->auth_algo) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  error = aesni_authprepare(ses, authini->cri_klen,
      authini->cri_key);
  if (error != 0)
   return (error);
  ses->mlen = authini->cri_mlen;
 }

 kt = is_fpu_kern_thread(0) || (encini == ((void*)0));
 if (!kt) {
  ACQUIRE_CTX(ctxidx, ctx);
  fpu_kern_enter(curthread, ctx,
      FPU_KERN_NORMAL | FPU_KERN_KTHR);
 }

 error = 0;
 if (encini != ((void*)0))
  error = aesni_cipher_setup_common(ses, encini->cri_key,
      encini->cri_klen);

 if (!kt) {
  fpu_kern_leave(curthread, ctx);
  RELEASE_CTX(ctxidx, ctx);
 }
 return (error);
}
