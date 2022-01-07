
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rs6000_framedata {int saved_gpr; int saved_fpr; int saved_vr; int saved_ev; int alloca_reg; int frameless; int nosavedpc; long fpr_offset; long gpr_offset; unsigned long offset; long lr_offset; long cr_offset; long vrsave_offset; long vr_offset; long ev_offset; } ;
struct gdbarch_tdep {int ppc_gp0_regnum; } ;
struct bfd_arch_info {scalar_t__ mach; } ;
struct TYPE_2__ {int name; } ;
typedef scalar_t__ CORE_ADDR ;


 int GET_SRC_REG (unsigned long) ;
 long SIGNED_SHORT (unsigned long) ;
 scalar_t__ bfd_mach_ppc_e500 ;
 int current_gdbarch ;
 unsigned long extract_signed_integer (char*,int) ;
 size_t find_pc_misc_function (scalar_t__) ;
 struct bfd_arch_info* gdbarch_bfd_arch_info (int ) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int main_name () ;
 int max_skip_non_prologue_insns ;
 int memset (struct rs6000_framedata*,int ,int) ;
 TYPE_1__* misc_function_vector ;
 unsigned long read_memory_integer (scalar_t__,int) ;
 scalar_t__ refine_prologue_limit (scalar_t__,scalar_t__) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int) ;
 size_t tmp ;

__attribute__((used)) static CORE_ADDR
skip_prologue (CORE_ADDR pc, CORE_ADDR lim_pc, struct rs6000_framedata *fdata)
{
  CORE_ADDR orig_pc = pc;
  CORE_ADDR last_prologue_pc = pc;
  CORE_ADDR li_found_pc = 0;
  char buf[4];
  unsigned long op;
  long offset = 0;
  long vr_saved_offset = 0;
  int lr_reg = -1;
  int cr_reg = -1;
  int vr_reg = -1;
  int ev_reg = -1;
  long ev_offset = 0;
  int vrsave_reg = -1;
  int reg;
  int framep = 0;
  int minimal_toc_loaded = 0;
  int prev_insn_was_prologue_insn = 1;
  int num_skip_non_prologue_insns = 0;
  const struct bfd_arch_info *arch_info = gdbarch_bfd_arch_info (current_gdbarch);
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  if (lim_pc == 0)
    lim_pc = refine_prologue_limit (pc, lim_pc);

  memset (fdata, 0, sizeof (struct rs6000_framedata));
  fdata->saved_gpr = -1;
  fdata->saved_fpr = -1;
  fdata->saved_vr = -1;
  fdata->saved_ev = -1;
  fdata->alloca_reg = -1;
  fdata->frameless = 1;
  fdata->nosavedpc = 1;

  for (;; pc += 4)
    {




      if (prev_insn_was_prologue_insn)
 last_prologue_pc = pc;


      if (lim_pc != 0 && pc >= lim_pc)
 break;

      prev_insn_was_prologue_insn = 1;


      if (target_read_memory (pc, buf, 4))
 break;
      op = extract_signed_integer (buf, 4);

      if ((op & 0xfc1fffff) == 0x7c0802a6)
 {
   lr_reg = (op & 0x03e00000);
   continue;

 }
      else if ((op & 0xfc1fffff) == 0x7c000026)
 {
   cr_reg = (op & 0x03e00000);
   continue;

 }
      else if ((op & 0xfc1f0000) == 0xd8010000)
 {
   reg = GET_SRC_REG (op);
   if (fdata->saved_fpr == -1 || fdata->saved_fpr > reg)
     {
       fdata->saved_fpr = reg;
       fdata->fpr_offset = SIGNED_SHORT (op) + offset;
     }
   continue;

 }
      else if (((op & 0xfc1f0000) == 0xbc010000) ||
        (((op & 0xfc1f0000) == 0x90010000 ||
   (op & 0xfc1f0003) == 0xf8010000) &&
  (op & 0x03e00000) >= 0x01a00000))
 {

   reg = GET_SRC_REG (op);
   if (fdata->saved_gpr == -1 || fdata->saved_gpr > reg)
     {
       fdata->saved_gpr = reg;
       if ((op & 0xfc1f0003) == 0xf8010000)
  op &= ~3UL;
       fdata->gpr_offset = SIGNED_SHORT (op) + offset;
     }
   continue;

 }
      else if ((op & 0xffff0000) == 0x60000000)
        {




   prev_insn_was_prologue_insn = 0;
   continue;

 }
      else if ((op & 0xffff0000) == 0x3c000000)
 {

   fdata->offset = (op & 0x0000ffff) << 16;
   fdata->frameless = 0;
   continue;

 }
      else if ((op & 0xffff0000) == 0x60000000)
 {

   fdata->offset |= (op & 0x0000ffff);
   fdata->frameless = 0;
   continue;

 }
      else if (lr_reg != -1 &&

        (((op & 0xffff0000) == (lr_reg | 0xf8010000)) ||

  ((op & 0xffff0000) == (lr_reg | 0x90010000)) ||

  ((op & 0xffff0000) == (lr_reg | 0x94010000))))
 {
   fdata->lr_offset = offset;
   fdata->nosavedpc = 0;
   lr_reg = 0;
   if ((op & 0xfc000003) == 0xf8000000 ||
       (op & 0xfc000000) == 0x90000000)
     {

       fdata->lr_offset += SIGNED_SHORT (op);
     }
   continue;

 }
      else if (cr_reg != -1 &&

        (((op & 0xffff0000) == (cr_reg | 0xf8010000)) ||

  ((op & 0xffff0000) == (cr_reg | 0x90010000)) ||

  ((op & 0xffff0000) == (cr_reg | 0x94010000))))
 {
   fdata->cr_offset = offset;
   cr_reg = 0;
   if ((op & 0xfc000003) == 0xf8000000 ||
       (op & 0xfc000000) == 0x90000000)
     {

       fdata->cr_offset += SIGNED_SHORT (op);
     }
   continue;

 }
      else if (op == 0x48000005)
 {

   continue;

 }
      else if (op == 0x48000004)
 {
   break;

 }
      else if ((op & 0xffff0000) == 0x3fc00000 ||

        (op & 0xffff0000) == 0x3bde0000)
 {
   continue;

 }
      else if ((op & 0xfc000001) == 0x48000001)
 {


   fdata->frameless = 0;


   if ((pc - orig_pc) > 8)
     break;

   op = read_memory_integer (pc + 4, 4);






   if (op == 0x4def7b82 || op == 0)
     break;

   continue;

 }

      else if ((op & 0xfc1f0000) == 0x94010000)
 {
   fdata->frameless = 0;
   fdata->offset = SIGNED_SHORT (op);
   offset = fdata->offset;
   continue;
 }
      else if ((op & 0xfc1f016a) == 0x7c01016e)
 {

   fdata->frameless = 0;
   offset = fdata->offset;
   continue;
 }
      else if ((op & 0xfc1f0003) == 0xf8010001)
 {
   fdata->frameless = 0;
   fdata->offset = SIGNED_SHORT (op & ~3UL);
   offset = fdata->offset;
   continue;
 }
      else if ((op & 0xfc1f016a) == 0x7c01016a)
 {

   fdata->frameless = 0;
   offset = fdata->offset;
   continue;
 }

      else if (((op >> 22) == 0x20f ||
        (op >> 22) == 0x3af)
        && !minimal_toc_loaded)
 {
   minimal_toc_loaded = 1;
   continue;



  }
      else if ((op & 0xfc0007fe) == 0x7c000378 &&
               (((op >> 21) & 31) >= 3) &&
               (((op >> 21) & 31) <= 10) &&
               ((long) ((op >> 16) & 31) >= fdata->saved_gpr))
 {
   continue;


 }
      else if ((op & 0xfc1f0003) == 0xf8010000 ||
        (op & 0xfc1f0000) == 0xd8010000 ||
        (op & 0xfc1f0000) == 0xfc010000)
 {
   continue;


 }
      else if (framep &&
        ((op & 0xfc1f0000) == 0x901f0000 ||
  (op & 0xfc1f0000) == 0xd81f0000 ||
  (op & 0xfc1f0000) == 0xfc1f0000))
 {
   continue;


 }
      else if (op == 0x603f0000
        || op == 0x7c3f0b78)
 {
   fdata->frameless = 0;
   framep = 1;
   fdata->alloca_reg = (tdep->ppc_gp0_regnum + 31);
   continue;


 }
      else if ((op & 0xfc1fffff) == 0x38010000)
 {
   fdata->frameless = 0;
   framep = 1;
   fdata->alloca_reg = (tdep->ppc_gp0_regnum
          + ((op & ~0x38010000) >> 21));
   continue;
 }
      else if ((op & 0xfc1fffff) == 0x7c0042a6)
 {
          vrsave_reg = GET_SRC_REG (op);
   continue;
 }
      else if ((op & 0xfc1fffff) == 0x7c0043a6)
        {
          continue;
        }




      else if ((op & 0xfc1f0000) == 0x90010000)
        {
          if (vrsave_reg == GET_SRC_REG (op))
     {
       fdata->vrsave_offset = SIGNED_SHORT (op) + offset;
       vrsave_reg = -1;
     }
          continue;
        }


      else if (((op & 0xfc000000) == 0x64000000)
        || ((op & 0xfc000000) == 0x60000000))
 {
   continue;
 }





      else if ((op & 0xffff0000) == 0x38000000
               || (op & 0xffff0000) == 0x39c00000)
 {
   li_found_pc = pc;
   vr_saved_offset = SIGNED_SHORT (op);
 }


      else if ((op & 0xfc1fffff) == 0x7c1f01ce)
        {
   if (pc == (li_found_pc + 4))
     {
       vr_reg = GET_SRC_REG (op);



       if (fdata->saved_vr == -1 || fdata->saved_vr > vr_reg)
  {
    fdata->saved_vr = vr_reg;
    fdata->vr_offset = vr_saved_offset + offset;
  }
       vr_saved_offset = -1;
       vr_reg = -1;
       li_found_pc = 0;
     }
 }






      else if (arch_info->mach == bfd_mach_ppc_e500
        && (op & 0xfc1f07ff) == 0x101f0321)
 {
          if ((op & 0x03e00000) >= 0x01a00000)
     {
              unsigned int imm;
       ev_reg = GET_SRC_REG (op);
              imm = (op >> 11) & 0x1f;
       ev_offset = imm * 8;



       if (fdata->saved_ev == -1 || fdata->saved_ev > ev_reg)
  {
    fdata->saved_ev = ev_reg;
    fdata->ev_offset = ev_offset + offset;
  }
     }
          continue;
        }


      else if (arch_info->mach == bfd_mach_ppc_e500
        && (op & 0xffe007ff) == 0x13e00320)
 {
          if (pc == (li_found_pc + 4))
            {
              ev_reg = GET_SRC_REG (op);




       if (fdata->saved_ev == -1 || fdata->saved_ev > ev_reg)
  {
                  fdata->saved_ev = ev_reg;
                  fdata->ev_offset = vr_saved_offset + offset;
  }
       vr_saved_offset = -1;
       ev_reg = -1;
       li_found_pc = 0;
            }
          continue;
        }


      else if (arch_info->mach == bfd_mach_ppc_e500
        && (op & 0xffe007ff) == 0x13e00321)
        {


   ev_reg = GET_SRC_REG (op);
          ev_offset = ((op >> 11) & 0x1f) * 8;



   if (fdata->saved_ev == -1 || fdata->saved_ev > ev_reg)
     {
       fdata->saved_ev = ev_reg;
       fdata->ev_offset = ev_offset + offset;
     }

   continue;
       }



      else if (arch_info->mach == bfd_mach_ppc_e500
        && (op & 0xfc1fffff) == 0x101f0320)
 {
          if (pc == (li_found_pc + 4))
            {
              if ((op & 0x03e00000) >= 0x01a00000)
  {
    ev_reg = GET_SRC_REG (op);





    if (fdata->saved_ev == -1 || fdata->saved_ev > ev_reg)
      {
        fdata->saved_ev = ev_reg;
        fdata->ev_offset = vr_saved_offset + offset;
      }
    ev_reg = -1;
  }
       vr_saved_offset = -1;
       li_found_pc = 0;
       continue;
            }
 }


      else
 {




   if (fdata->frameless == 0
       && (lr_reg == -1 || fdata->nosavedpc == 0))
     break;

   if (op == 0x4e800020
       || op == 0x4e800420)


     break;
   if ((op & 0xf4000000) == 0x40000000)

     break;

   if (num_skip_non_prologue_insns++ > max_skip_non_prologue_insns)


     break;


   prev_insn_was_prologue_insn = 0;
   continue;
 }
    }
  fdata->offset = -fdata->offset;
  return last_prologue_pc;
}
