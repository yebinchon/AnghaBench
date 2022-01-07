
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int npc_regnum; int pc_regnum; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int AT_ENTRY_POINT ;
 int SPARC64_NPC_REGNUM ;
 int SPARC64_NUM_PSEUDO_REGS ;
 int SPARC64_NUM_REGS ;
 int SPARC64_PC_REGNUM ;
 int default_stabs_argument_has_addr ;
 int frame_base_set_default (struct gdbarch*,int *) ;
 int frame_unwind_append_sniffer (struct gdbarch*,int ) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int set_gdbarch_call_dummy_location (struct gdbarch*,int ) ;
 int set_gdbarch_long_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_long_bit (struct gdbarch*,int) ;
 int set_gdbarch_num_pseudo_regs (struct gdbarch*,int ) ;
 int set_gdbarch_num_regs (struct gdbarch*,int ) ;
 int set_gdbarch_pc_regnum (struct gdbarch*,int ) ;
 int set_gdbarch_pseudo_register_read (struct gdbarch*,int ) ;
 int set_gdbarch_pseudo_register_write (struct gdbarch*,int ) ;
 int set_gdbarch_ptr_bit (struct gdbarch*,int) ;
 int set_gdbarch_push_dummy_call (struct gdbarch*,int ) ;
 int set_gdbarch_push_dummy_code (struct gdbarch*,int *) ;
 int set_gdbarch_register_name (struct gdbarch*,int ) ;
 int set_gdbarch_register_type (struct gdbarch*,int ) ;
 int set_gdbarch_return_value (struct gdbarch*,int ) ;
 int set_gdbarch_skip_prologue (struct gdbarch*,int ) ;
 int set_gdbarch_stabs_argument_has_addr (struct gdbarch*,int ) ;
 int sparc64_frame_base ;
 int sparc64_frame_sniffer ;
 int sparc64_pseudo_register_read ;
 int sparc64_pseudo_register_write ;
 int sparc64_push_dummy_call ;
 int sparc64_register_name ;
 int sparc64_register_type ;
 int sparc64_return_value ;
 int sparc64_skip_prologue ;

void
sparc64_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  tdep->pc_regnum = SPARC64_PC_REGNUM;
  tdep->npc_regnum = SPARC64_NPC_REGNUM;


  set_gdbarch_long_bit (gdbarch, 64);
  set_gdbarch_long_long_bit (gdbarch, 64);
  set_gdbarch_ptr_bit (gdbarch, 64);

  set_gdbarch_num_regs (gdbarch, SPARC64_NUM_REGS);
  set_gdbarch_register_name (gdbarch, sparc64_register_name);
  set_gdbarch_register_type (gdbarch, sparc64_register_type);
  set_gdbarch_num_pseudo_regs (gdbarch, SPARC64_NUM_PSEUDO_REGS);
  set_gdbarch_pseudo_register_read (gdbarch, sparc64_pseudo_register_read);
  set_gdbarch_pseudo_register_write (gdbarch, sparc64_pseudo_register_write);


  set_gdbarch_pc_regnum (gdbarch, SPARC64_PC_REGNUM);


  set_gdbarch_call_dummy_location (gdbarch, AT_ENTRY_POINT);
  set_gdbarch_push_dummy_code (gdbarch, ((void*)0));
  set_gdbarch_push_dummy_call (gdbarch, sparc64_push_dummy_call);

  set_gdbarch_return_value (gdbarch, sparc64_return_value);
  set_gdbarch_stabs_argument_has_addr
    (gdbarch, default_stabs_argument_has_addr);

  set_gdbarch_skip_prologue (gdbarch, sparc64_skip_prologue);

  frame_unwind_append_sniffer (gdbarch, sparc64_frame_sniffer);
  frame_base_set_default (gdbarch, &sparc64_frame_base);
}
