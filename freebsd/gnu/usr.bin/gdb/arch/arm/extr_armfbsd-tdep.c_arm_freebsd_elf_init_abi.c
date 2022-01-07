
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int fp_model; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int ARM_FLOAT_SOFT_VFP ;
 int arm_freebsd_init_abi_common (struct gdbarch_info,struct gdbarch*) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int generic_in_solib_call_trampoline ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int svr4_ilp32_fetch_link_map_offsets ;

__attribute__((used)) static void
arm_freebsd_elf_init_abi (struct gdbarch_info info,
    struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  arm_freebsd_init_abi_common (info, gdbarch);


  set_gdbarch_in_solib_call_trampoline
    (gdbarch, generic_in_solib_call_trampoline);
  set_solib_svr4_fetch_link_map_offsets
    (gdbarch, svr4_ilp32_fetch_link_map_offsets);

  tdep->fp_model = ARM_FLOAT_SOFT_VFP;
}
