
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct envxmm {int en_mxcsr_mask; int en_mxcsr; int en_rdp; int en_rip; int en_opcode; int en_tw; int en_sw; int en_cw; } ;
struct savefpu {TYPE_3__* sv_xmm; TYPE_2__* sv_fp; struct envxmm sv_env; } ;
struct fpreg {int * fpr_xacc; int * fpr_acc; int fpr_env; } ;
struct TYPE_6__ {int xmm_bytes; } ;
struct TYPE_4__ {int fp_bytes; } ;
struct TYPE_5__ {TYPE_1__ fp_acc; } ;


 int bcopy (int ,int ,int) ;
 int bzero (struct fpreg*,int) ;

__attribute__((used)) static void
fill_fpregs_xmm(struct savefpu *sv_xmm, struct fpreg *fpregs)
{
 struct envxmm *penv_fpreg = (struct envxmm *)&fpregs->fpr_env;
 struct envxmm *penv_xmm = &sv_xmm->sv_env;
 int i;


 bzero(fpregs, sizeof(*fpregs));


 penv_fpreg->en_cw = penv_xmm->en_cw;
 penv_fpreg->en_sw = penv_xmm->en_sw;
 penv_fpreg->en_tw = penv_xmm->en_tw;
 penv_fpreg->en_opcode = penv_xmm->en_opcode;
 penv_fpreg->en_rip = penv_xmm->en_rip;
 penv_fpreg->en_rdp = penv_xmm->en_rdp;
 penv_fpreg->en_mxcsr = penv_xmm->en_mxcsr;
 penv_fpreg->en_mxcsr_mask = penv_xmm->en_mxcsr_mask;


 for (i = 0; i < 8; ++i)
  bcopy(sv_xmm->sv_fp[i].fp_acc.fp_bytes, fpregs->fpr_acc[i], 10);


 for (i = 0; i < 16; ++i)
  bcopy(sv_xmm->sv_xmm[i].xmm_bytes, fpregs->fpr_xacc[i], 16);
}
