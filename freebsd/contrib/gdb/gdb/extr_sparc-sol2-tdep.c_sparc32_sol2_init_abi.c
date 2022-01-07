
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int plt_entry_size; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int find_solib_trampoline_target ;
 int frame_unwind_append_sniffer (struct gdbarch*,int ) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int in_plt_section ;
 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_gdbarch_skip_trampoline_code (struct gdbarch*,int ) ;
 int set_gdbarch_software_single_step (struct gdbarch*,int *) ;
 int sparc32_sol2_sigtramp_frame_sniffer ;
 int sparc_sol2_pc_in_sigtramp ;

void
sparc32_sol2_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  set_gdbarch_in_solib_call_trampoline (gdbarch, in_plt_section);
  set_gdbarch_skip_trampoline_code (gdbarch, find_solib_trampoline_target);



  tdep->plt_entry_size = 12;


  set_gdbarch_software_single_step (gdbarch, ((void*)0));

  set_gdbarch_pc_in_sigtramp (gdbarch, sparc_sol2_pc_in_sigtramp);
  frame_unwind_append_sniffer (gdbarch, sparc32_sol2_sigtramp_frame_sniffer);
}
