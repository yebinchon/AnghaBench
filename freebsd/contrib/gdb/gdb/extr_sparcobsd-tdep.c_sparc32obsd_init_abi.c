
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int dummy; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int floatformat_ieee_double_big ;
 int frame_unwind_append_sniffer (struct gdbarch*,int ) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int nbsd_ilp32_solib_svr4_fetch_link_map_offsets ;
 int set_gdbarch_long_double_bit (struct gdbarch*,int) ;
 int set_gdbarch_long_double_format (struct gdbarch*,int *) ;
 int set_gdbarch_pc_in_sigtramp (struct gdbarch*,int ) ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int sparc32obsd_pc_in_sigtramp ;
 int sparc32obsd_sigtramp_frame_sniffer ;

__attribute__((used)) static void
sparc32obsd_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  set_gdbarch_long_double_bit (gdbarch, 64);
  set_gdbarch_long_double_format (gdbarch, &floatformat_ieee_double_big);

  set_gdbarch_pc_in_sigtramp (gdbarch, sparc32obsd_pc_in_sigtramp);
  frame_unwind_append_sniffer (gdbarch, sparc32obsd_sigtramp_frame_sniffer);

  set_solib_svr4_fetch_link_map_offsets
    (gdbarch, nbsd_ilp32_solib_svr4_fetch_link_map_offsets);
}
