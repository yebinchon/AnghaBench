
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct variant {int mach; scalar_t__ arch; int num_tot_regs; int npregs; int nregs; TYPE_2__* regs; } ;
struct reg {int dummy; } ;
struct gdbarch_tdep {int wordsize; int ppc_gp0_regnum; int ppc_gplast_regnum; int ppc_toc_regnum; int ppc_ps_regnum; int ppc_cr_regnum; int ppc_lr_regnum; int ppc_ctr_regnum; int ppc_xer_regnum; int ppc_mq_regnum; int ppc_fpscr_regnum; int ppc_vr0_regnum; int ppc_vrsave_regnum; int ppc_ev0_regnum; int ppc_ev31_regnum; int lr_frame_offset; int* regoff; TYPE_2__* regs; } ;
struct gdbarch_list {struct gdbarch* gdbarch; struct gdbarch_list* next; } ;
struct gdbarch_info {TYPE_1__* bfd_arch_info; TYPE_4__* abfd; } ;
struct gdbarch {int dummy; } ;
typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd ;
typedef int asection ;
struct TYPE_11__ {scalar_t__ format; } ;
struct TYPE_10__ {scalar_t__* e_ident; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {int bits_per_word; int bits_per_byte; int arch; unsigned long mach; } ;


 size_t EI_CLASS ;
 scalar_t__ ELFCLASS64 ;
 int TARGET_CHAR_BIT ;
 scalar_t__ bfd_arch_powerpc ;
 int bfd_arch_rs6000 ;
 int bfd_default_set_arch_mach (int *,int,unsigned long) ;
 void* bfd_get_arch_info (int *) ;
 scalar_t__ bfd_get_flavour (TYPE_4__*) ;
 int * bfd_get_section_by_name (TYPE_4__*,char*) ;

 int bfd_mach_ppc_601 ;


 scalar_t__ bfd_object ;
 scalar_t__ bfd_target_elf_flavour ;
 scalar_t__ bfd_target_xcoff_flavour ;
 scalar_t__ bfd_xcoff_is_xcoff64 (TYPE_4__*) ;
 int core_addr_lessthan ;
 int e500_dwarf2_reg_to_regnum ;
 int e500_pseudo_register_read ;
 int e500_pseudo_register_write ;
 TYPE_3__* elf_elfheader (TYPE_4__*) ;
 struct variant* find_variant_by_arch (int,unsigned long) ;
 int gdb_assert (int) ;
 int gdb_print_insn_powerpc ;
 struct gdbarch* gdbarch_alloc (struct gdbarch_info*,struct gdbarch_tdep*) ;
 int gdbarch_init_osabi (struct gdbarch_info,struct gdbarch*) ;
 struct gdbarch_list* gdbarch_list_lookup_by_info (struct gdbarch_list*,struct gdbarch_info*) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int generic_save_dummy_frame_tos ;
 int generic_target_write_pc ;
 int init_variants () ;
 int ppc64_sysv_abi_adjust_breakpoint_address ;
 int ppc64_sysv_abi_push_dummy_call ;
 int ppc64_sysv_abi_return_value ;
 int ppc_sysv_abi_push_dummy_call ;
 int ppc_sysv_abi_return_value ;
 int print_insn_rs6000 ;
 scalar_t__ regsize (TYPE_2__*,int) ;
 int rs6000_breakpoint_from_pc ;
 int rs6000_convert_from_func_ptr_addr ;
 int rs6000_extract_return_value ;
 int rs6000_extract_struct_value_address ;
 int rs6000_fetch_pointer_argument ;
 int rs6000_frame_align ;
 int rs6000_frame_args_address ;
 int rs6000_frame_chain ;
 int rs6000_frame_init_saved_regs ;
 int rs6000_frame_saved_pc ;
 int rs6000_frameless_function_invocation ;
 int rs6000_init_extra_frame_info ;
 int rs6000_pop_frame ;
 int rs6000_push_dummy_call ;
 int rs6000_register_byte ;
 int rs6000_register_convert_to_raw ;
 int rs6000_register_convert_to_virtual ;
 int rs6000_register_convertible ;
 int rs6000_register_name ;
 int rs6000_register_raw_size ;
 int rs6000_register_virtual_type ;
 int rs6000_saved_pc_after_call ;
 int rs6000_skip_prologue ;
 int rs6000_software_single_step ;
 int rs6000_stab_reg_to_regnum ;
 int rs6000_store_return_value ;
 int rs6000_use_struct_convention ;
 int set_gdbarch_adjust_breakpoint_address (struct gdbarch*,int ) ;
 int set_gdbarch_believe_pcc_promotion (struct gdbarch*,int) ;
 int set_gdbarch_breakpoint_from_pc (struct gdbarch*,int ) ;
 int set_gdbarch_char_signed (struct gdbarch*,int ) ;
 int set_gdbarch_convert_from_func_ptr_addr (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_extract_return_value (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_extract_struct_value_address (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_fp_regnum (struct gdbarch*,int) ;
 int set_gdbarch_deprecated_frame_args_address (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_frame_chain (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_frame_init_saved_regs (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_frame_locals_address (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_frame_saved_pc (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_frameless_function_invocation (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_init_extra_frame_info (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_pop_frame (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_register_byte (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_register_bytes (struct gdbarch*,int) ;
 int set_gdbarch_deprecated_register_convert_to_raw (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_register_convert_to_virtual (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_register_convertible (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_register_raw_size (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_register_size (struct gdbarch*,int) ;
 int set_gdbarch_deprecated_register_virtual_type (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_save_dummy_frame_tos (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_saved_pc_after_call (struct gdbarch*,int ) ;
 int set_gdbarch_deprecated_store_return_value (struct gdbarch*,int ) ;
 int set_gdbarch_double_bit (struct gdbarch*,int) ;
 int set_gdbarch_dwarf2_reg_to_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_fetch_pointer_argument (struct gdbarch*,int ) ;
 int set_gdbarch_float_bit (struct gdbarch*,int) ;
 int set_gdbarch_frame_align (struct gdbarch*,int ) ;
 int set_gdbarch_frame_args_skip (struct gdbarch*,int) ;
 int set_gdbarch_frame_red_zone_size (struct gdbarch*,int) ;
 int set_gdbarch_inner_than (struct gdbarch*,int ) ;
 int set_gdbarch_int_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_double_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_long_bit (struct gdbarch*,int) ;
 int set_gdbarch_num_pseudo_regs (struct gdbarch*,int ) ;
 int set_gdbarch_num_regs (struct gdbarch*,int ) ;
 int set_gdbarch_pc_regnum (struct gdbarch*,int) ;
 int set_gdbarch_print_insn (struct gdbarch*,int ) ;
 int set_gdbarch_pseudo_register_read (struct gdbarch*,int ) ;
 int set_gdbarch_pseudo_register_write (struct gdbarch*,int ) ;
 int set_gdbarch_ptr_bit (struct gdbarch*,int) ;
 int set_gdbarch_push_dummy_call (struct gdbarch*,int ) ;
 int set_gdbarch_register_name (struct gdbarch*,int ) ;
 int set_gdbarch_return_value (struct gdbarch*,int ) ;
 int set_gdbarch_short_bit (struct gdbarch*,int) ;
 int set_gdbarch_skip_prologue (struct gdbarch*,int ) ;
 int set_gdbarch_software_single_step (struct gdbarch*,int ) ;
 int set_gdbarch_sp_regnum (struct gdbarch*,int) ;
 int set_gdbarch_stab_reg_to_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_use_struct_convention (struct gdbarch*,int ) ;
 int set_gdbarch_write_pc (struct gdbarch*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 void* xmalloc (int) ;

__attribute__((used)) static struct gdbarch *
rs6000_gdbarch_init (struct gdbarch_info info, struct gdbarch_list *arches)
{
  struct gdbarch *gdbarch;
  struct gdbarch_tdep *tdep;
  int wordsize, from_xcoff_exec, from_elf_exec, power, i, off;
  struct reg *regs;
  const struct variant *v;
  enum bfd_architecture arch;
  unsigned long mach;
  bfd abfd;
  int sysv_abi;
  asection *sect;

  from_xcoff_exec = info.abfd && info.abfd->format == bfd_object &&
    bfd_get_flavour (info.abfd) == bfd_target_xcoff_flavour;

  from_elf_exec = info.abfd && info.abfd->format == bfd_object &&
    bfd_get_flavour (info.abfd) == bfd_target_elf_flavour;

  sysv_abi = info.abfd && bfd_get_flavour (info.abfd) == bfd_target_elf_flavour;



  if (from_xcoff_exec)
    {
      if (bfd_xcoff_is_xcoff64 (info.abfd))
 wordsize = 8;
      else
 wordsize = 4;
    }
  else if (from_elf_exec)
    {
      if (elf_elfheader (info.abfd)->e_ident[EI_CLASS] == ELFCLASS64)
 wordsize = 8;
      else
 wordsize = 4;
    }
  else
    {
      if (info.bfd_arch_info != ((void*)0) && info.bfd_arch_info->bits_per_word != 0)
 wordsize = info.bfd_arch_info->bits_per_word /
   info.bfd_arch_info->bits_per_byte;
      else
 wordsize = 4;
    }


  for (arches = gdbarch_list_lookup_by_info (arches, &info);
       arches != ((void*)0);
       arches = gdbarch_list_lookup_by_info (arches->next, &info))
    {



      tdep = gdbarch_tdep (arches->gdbarch);
      if (tdep && tdep->wordsize == wordsize)
 return arches->gdbarch;
    }
  if (!from_xcoff_exec)
    {
      arch = info.bfd_arch_info->arch;
      mach = info.bfd_arch_info->mach;
    }
  else
    {
      arch = bfd_arch_powerpc;
      bfd_default_set_arch_mach (&abfd, arch, 0);
      info.bfd_arch_info = bfd_get_arch_info (&abfd);
      mach = info.bfd_arch_info->mach;
    }
  tdep = xmalloc (sizeof (struct gdbarch_tdep));
  tdep->wordsize = wordsize;
  if (info.abfd)
    {
      sect = bfd_get_section_by_name (info.abfd, ".PPC.EMB.apuinfo");
      if (sect)
 {
   arch = info.bfd_arch_info->arch;
   mach = 128;
   bfd_default_set_arch_mach (&abfd, arch, mach);
   info.bfd_arch_info = bfd_get_arch_info (&abfd);
 }
    }

  gdbarch = gdbarch_alloc (&info, tdep);
  power = arch == bfd_arch_rs6000;


  init_variants ();


  v = find_variant_by_arch (arch, mach);
  if (!v)
    return ((void*)0);

  tdep->regs = v->regs;

  tdep->ppc_gp0_regnum = 0;
  tdep->ppc_gplast_regnum = 31;
  tdep->ppc_toc_regnum = 2;
  tdep->ppc_ps_regnum = 65;
  tdep->ppc_cr_regnum = 66;
  tdep->ppc_lr_regnum = 67;
  tdep->ppc_ctr_regnum = 68;
  tdep->ppc_xer_regnum = 69;
  if (v->mach == bfd_mach_ppc_601)
    tdep->ppc_mq_regnum = 124;
  else if (power)
    tdep->ppc_mq_regnum = 70;
  else
    tdep->ppc_mq_regnum = -1;
  tdep->ppc_fpscr_regnum = power ? 71 : 70;

  set_gdbarch_pc_regnum (gdbarch, 64);
  set_gdbarch_sp_regnum (gdbarch, 1);
  set_gdbarch_deprecated_fp_regnum (gdbarch, 1);
  if (sysv_abi && wordsize == 8)
    set_gdbarch_return_value (gdbarch, ppc64_sysv_abi_return_value);
  else if (sysv_abi && wordsize == 4)
    set_gdbarch_return_value (gdbarch, ppc_sysv_abi_return_value);
  else
    {
      set_gdbarch_deprecated_extract_return_value (gdbarch, rs6000_extract_return_value);
      set_gdbarch_deprecated_store_return_value (gdbarch, rs6000_store_return_value);
    }

  if (v->arch == bfd_arch_powerpc)
    switch (v->mach)
      {
      case 130:
 tdep->ppc_vr0_regnum = 71;
 tdep->ppc_vrsave_regnum = 104;
 tdep->ppc_ev0_regnum = -1;
 tdep->ppc_ev31_regnum = -1;
 break;
      case 129:
 tdep->ppc_vr0_regnum = 119;
 tdep->ppc_vrsave_regnum = 152;
 tdep->ppc_ev0_regnum = -1;
 tdep->ppc_ev31_regnum = -1;
 break;
      case 128:
        tdep->ppc_gp0_regnum = 41;
        tdep->ppc_gplast_regnum = tdep->ppc_gp0_regnum + 32 - 1;
        tdep->ppc_toc_regnum = -1;
        tdep->ppc_ps_regnum = 1;
        tdep->ppc_cr_regnum = 2;
        tdep->ppc_lr_regnum = 3;
        tdep->ppc_ctr_regnum = 4;
        tdep->ppc_xer_regnum = 5;
 tdep->ppc_ev0_regnum = 7;
 tdep->ppc_ev31_regnum = 38;
        set_gdbarch_pc_regnum (gdbarch, 0);
        set_gdbarch_sp_regnum (gdbarch, tdep->ppc_gp0_regnum + 1);
        set_gdbarch_deprecated_fp_regnum (gdbarch, tdep->ppc_gp0_regnum + 1);
        set_gdbarch_dwarf2_reg_to_regnum (gdbarch, e500_dwarf2_reg_to_regnum);
        set_gdbarch_pseudo_register_read (gdbarch, e500_pseudo_register_read);
        set_gdbarch_pseudo_register_write (gdbarch, e500_pseudo_register_write);
 break;
      default:
 tdep->ppc_vr0_regnum = -1;
 tdep->ppc_vrsave_regnum = -1;
 tdep->ppc_ev0_regnum = -1;
 tdep->ppc_ev31_regnum = -1;
 break;
      }


  gdb_assert (strcmp (tdep->regs[tdep->ppc_gp0_regnum].name, "r0") == 0);


  if (wordsize == 8)
    tdep->lr_frame_offset = 16;
  else if (sysv_abi)
    tdep->lr_frame_offset = 4;
  else
    tdep->lr_frame_offset = 8;


  tdep->regoff = xmalloc (v->num_tot_regs * sizeof (int));
  for (i = off = 0; i < v->num_tot_regs; i++)
    {
      tdep->regoff[i] = off;
      off += regsize (v->regs + i, wordsize);
    }


  if (arch == power)
    set_gdbarch_print_insn (gdbarch, print_insn_rs6000);
  else
    set_gdbarch_print_insn (gdbarch, gdb_print_insn_powerpc);

  set_gdbarch_write_pc (gdbarch, generic_target_write_pc);

  set_gdbarch_num_regs (gdbarch, v->nregs);
  set_gdbarch_num_pseudo_regs (gdbarch, v->npregs);
  set_gdbarch_register_name (gdbarch, rs6000_register_name);
  set_gdbarch_deprecated_register_size (gdbarch, wordsize);
  set_gdbarch_deprecated_register_bytes (gdbarch, off);
  set_gdbarch_deprecated_register_byte (gdbarch, rs6000_register_byte);
  set_gdbarch_deprecated_register_raw_size (gdbarch, rs6000_register_raw_size);
  set_gdbarch_deprecated_register_virtual_type (gdbarch, rs6000_register_virtual_type);

  set_gdbarch_ptr_bit (gdbarch, wordsize * TARGET_CHAR_BIT);
  set_gdbarch_short_bit (gdbarch, 2 * TARGET_CHAR_BIT);
  set_gdbarch_int_bit (gdbarch, 4 * TARGET_CHAR_BIT);
  set_gdbarch_long_bit (gdbarch, wordsize * TARGET_CHAR_BIT);
  set_gdbarch_long_long_bit (gdbarch, 8 * TARGET_CHAR_BIT);
  set_gdbarch_float_bit (gdbarch, 4 * TARGET_CHAR_BIT);
  set_gdbarch_double_bit (gdbarch, 8 * TARGET_CHAR_BIT);
  if (sysv_abi)
    set_gdbarch_long_double_bit (gdbarch, 16 * TARGET_CHAR_BIT);
  else
    set_gdbarch_long_double_bit (gdbarch, 8 * TARGET_CHAR_BIT);
  set_gdbarch_char_signed (gdbarch, 0);

  set_gdbarch_frame_align (gdbarch, rs6000_frame_align);
  if (sysv_abi && wordsize == 8)

    set_gdbarch_frame_red_zone_size (gdbarch, 288);
  else if (!sysv_abi && wordsize == 4)




    set_gdbarch_frame_red_zone_size (gdbarch, 224);
  set_gdbarch_deprecated_save_dummy_frame_tos (gdbarch, generic_save_dummy_frame_tos);
  set_gdbarch_believe_pcc_promotion (gdbarch, 1);

  set_gdbarch_deprecated_register_convertible (gdbarch, rs6000_register_convertible);
  set_gdbarch_deprecated_register_convert_to_virtual (gdbarch, rs6000_register_convert_to_virtual);
  set_gdbarch_deprecated_register_convert_to_raw (gdbarch, rs6000_register_convert_to_raw);
  set_gdbarch_stab_reg_to_regnum (gdbarch, rs6000_stab_reg_to_regnum);







  if (sysv_abi && wordsize == 4)
    set_gdbarch_push_dummy_call (gdbarch, ppc_sysv_abi_push_dummy_call);
  else if (sysv_abi && wordsize == 8)
    set_gdbarch_push_dummy_call (gdbarch, ppc64_sysv_abi_push_dummy_call);
  else
    set_gdbarch_push_dummy_call (gdbarch, rs6000_push_dummy_call);

  set_gdbarch_deprecated_extract_struct_value_address (gdbarch, rs6000_extract_struct_value_address);
  set_gdbarch_deprecated_pop_frame (gdbarch, rs6000_pop_frame);

  set_gdbarch_skip_prologue (gdbarch, rs6000_skip_prologue);
  set_gdbarch_inner_than (gdbarch, core_addr_lessthan);
  set_gdbarch_breakpoint_from_pc (gdbarch, rs6000_breakpoint_from_pc);







  if (sysv_abi && wordsize == 8)
    set_gdbarch_adjust_breakpoint_address (gdbarch, ppc64_sysv_abi_adjust_breakpoint_address);


  set_gdbarch_frame_args_skip (gdbarch, 8);

  if (!sysv_abi)
    set_gdbarch_use_struct_convention (gdbarch,
           rs6000_use_struct_convention);

  set_gdbarch_deprecated_frameless_function_invocation (gdbarch, rs6000_frameless_function_invocation);
  set_gdbarch_deprecated_frame_chain (gdbarch, rs6000_frame_chain);
  set_gdbarch_deprecated_frame_saved_pc (gdbarch, rs6000_frame_saved_pc);

  set_gdbarch_deprecated_frame_init_saved_regs (gdbarch, rs6000_frame_init_saved_regs);
  set_gdbarch_deprecated_init_extra_frame_info (gdbarch, rs6000_init_extra_frame_info);

  if (!sysv_abi)
    {


      set_gdbarch_convert_from_func_ptr_addr (gdbarch,
 rs6000_convert_from_func_ptr_addr);
    }
  set_gdbarch_deprecated_frame_args_address (gdbarch, rs6000_frame_args_address);
  set_gdbarch_deprecated_frame_locals_address (gdbarch, rs6000_frame_args_address);
  set_gdbarch_deprecated_saved_pc_after_call (gdbarch, rs6000_saved_pc_after_call);


  set_gdbarch_fetch_pointer_argument (gdbarch, rs6000_fetch_pointer_argument);


  gdbarch_init_osabi (info, gdbarch);

  if (from_xcoff_exec)
    {





       set_gdbarch_software_single_step (gdbarch, rs6000_software_single_step);
    }

  return gdbarch;
}
