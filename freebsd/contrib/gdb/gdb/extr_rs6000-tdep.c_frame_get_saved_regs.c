
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs6000_framedata {scalar_t__ saved_fpr; scalar_t__ saved_gpr; scalar_t__ saved_vr; scalar_t__ saved_ev; scalar_t__ lr_offset; scalar_t__ cr_offset; scalar_t__ vr_offset; scalar_t__ ev_offset; int fpr_offset; int gpr_offset; scalar_t__ vrsave_offset; } ;
struct gdbarch_tdep {int wordsize; int ppc_gp0_regnum; int ppc_vr0_regnum; int ppc_vrsave_regnum; int ppc_ev0_regnum; int ppc_ev31_regnum; size_t ppc_cr_regnum; size_t ppc_lr_regnum; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int DEPRECATED_FRAME_CHAIN (struct frame_info*) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int FP0_REGNUM ;
 int current_gdbarch ;
 int* deprecated_get_frame_saved_regs (struct frame_info*) ;
 int frame_saved_regs_zalloc (struct frame_info*) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int get_frame_func (struct frame_info*) ;
 int get_frame_pc (struct frame_info*) ;
 int skip_prologue (int ,int ,struct rs6000_framedata*) ;

__attribute__((used)) static void
frame_get_saved_regs (struct frame_info *fi, struct rs6000_framedata *fdatap)
{
  CORE_ADDR frame_addr;
  struct rs6000_framedata work_fdata;
  struct gdbarch_tdep * tdep = gdbarch_tdep (current_gdbarch);
  int wordsize = tdep->wordsize;

  if (deprecated_get_frame_saved_regs (fi))
    return;

  if (fdatap == ((void*)0))
    {
      fdatap = &work_fdata;
      (void) skip_prologue (get_frame_func (fi), get_frame_pc (fi), fdatap);
    }

  frame_saved_regs_zalloc (fi);






  if (fdatap->saved_fpr == 0
      && fdatap->saved_gpr == 0
      && fdatap->saved_vr == 0
      && fdatap->saved_ev == 0
      && fdatap->lr_offset == 0
      && fdatap->cr_offset == 0
      && fdatap->vr_offset == 0
      && fdatap->ev_offset == 0)
    frame_addr = 0;
  else





    frame_addr = DEPRECATED_FRAME_CHAIN (fi);




  if (fdatap->saved_fpr >= 0)
    {
      int i;
      CORE_ADDR fpr_addr = frame_addr + fdatap->fpr_offset;
      for (i = fdatap->saved_fpr; i < 32; i++)
 {
   deprecated_get_frame_saved_regs (fi)[FP0_REGNUM + i] = fpr_addr;
   fpr_addr += 8;
 }
    }




  if (fdatap->saved_gpr >= 0)
    {
      int i;
      CORE_ADDR gpr_addr = frame_addr + fdatap->gpr_offset;
      for (i = fdatap->saved_gpr; i < 32; i++)
 {
   deprecated_get_frame_saved_regs (fi)[tdep->ppc_gp0_regnum + i] = gpr_addr;
   gpr_addr += wordsize;
 }
    }



  if (tdep->ppc_vr0_regnum != -1 && tdep->ppc_vrsave_regnum != -1)
    {
      if (fdatap->saved_vr >= 0)
 {
   int i;
   CORE_ADDR vr_addr = frame_addr + fdatap->vr_offset;
   for (i = fdatap->saved_vr; i < 32; i++)
     {
       deprecated_get_frame_saved_regs (fi)[tdep->ppc_vr0_regnum + i] = vr_addr;
       vr_addr += DEPRECATED_REGISTER_RAW_SIZE (tdep->ppc_vr0_regnum);
     }
 }
    }



  if (tdep->ppc_ev0_regnum != -1 && tdep->ppc_ev31_regnum != -1)
    {
      if (fdatap->saved_ev >= 0)
 {
   int i;
   CORE_ADDR ev_addr = frame_addr + fdatap->ev_offset;
   for (i = fdatap->saved_ev; i < 32; i++)
     {
       deprecated_get_frame_saved_regs (fi)[tdep->ppc_ev0_regnum + i] = ev_addr;
              deprecated_get_frame_saved_regs (fi)[tdep->ppc_gp0_regnum + i] = ev_addr + 4;
       ev_addr += DEPRECATED_REGISTER_RAW_SIZE (tdep->ppc_ev0_regnum);
            }
 }
    }



  if (fdatap->cr_offset != 0)
    deprecated_get_frame_saved_regs (fi)[tdep->ppc_cr_regnum] = frame_addr + fdatap->cr_offset;



  if (fdatap->lr_offset != 0)
    deprecated_get_frame_saved_regs (fi)[tdep->ppc_lr_regnum] = frame_addr + fdatap->lr_offset;



  if (fdatap->vrsave_offset != 0)
    deprecated_get_frame_saved_regs (fi)[tdep->ppc_vrsave_regnum] = frame_addr + fdatap->vrsave_offset;
}
