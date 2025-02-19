
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int _mc_fprs; int _mc_gsr; int _mc_fsr; int mc_fp; } ;
struct TYPE_4__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct fpreg {int fr_gsr; int fr_fsr; int fr_regs; } ;
typedef TYPE_2__ mcontext_t ;


 int FPRS_FEF ;
 int MIN (int,int) ;
 int memcpy (int ,int ,int ) ;

void
pt_fpreg_to_ucontext(const struct fpreg* r, ucontext_t *uc)
{
 mcontext_t *mc = &uc->uc_mcontext;

 memcpy(mc->mc_fp, r->fr_regs, MIN(sizeof(mc->mc_fp),
     sizeof(r->fr_regs)));
 mc->_mc_fsr = r->fr_fsr;
 mc->_mc_gsr = r->fr_gsr;
 mc->_mc_fprs |= FPRS_FEF;
}
