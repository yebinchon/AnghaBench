
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct padlock_session {int ses_fpu_ctx; } ;
struct cryptop {int crp_flags; int crp_buf; } ;
struct cryptodesc {int crd_flags; int crd_klen; int crd_key; } ;


 int CRD_F_KEY_EXPLICIT ;
 int FPU_KERN_KTHR ;
 int FPU_KERN_NORMAL ;
 struct thread* curthread ;
 int fpu_kern_enter (struct thread*,int ,int) ;
 int fpu_kern_leave (struct thread*,int ) ;
 int padlock_authcompute (struct padlock_session*,struct cryptodesc*,int ,int ) ;
 int padlock_hash_key_setup (struct padlock_session*,int ,int ) ;

int
padlock_hash_process(struct padlock_session *ses, struct cryptodesc *maccrd,
    struct cryptop *crp)
{
 struct thread *td;
 int error;

 td = curthread;
 fpu_kern_enter(td, ses->ses_fpu_ctx, FPU_KERN_NORMAL | FPU_KERN_KTHR);
 if ((maccrd->crd_flags & CRD_F_KEY_EXPLICIT) != 0)
  padlock_hash_key_setup(ses, maccrd->crd_key, maccrd->crd_klen);

 error = padlock_authcompute(ses, maccrd, crp->crp_buf, crp->crp_flags);
 fpu_kern_leave(td, ses->ses_fpu_ctx);
 return (error);
}
