
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int nbsd_ilp32_solib_svr4_fetch_link_map_offsets ;
 int set_solib_svr4_fetch_link_map_offsets (struct gdbarch*,int ) ;
 int sparc32nbsd_init_abi (struct gdbarch_info,struct gdbarch*) ;

__attribute__((used)) static void
sparc32nbsd_elf_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  sparc32nbsd_init_abi (info, gdbarch);

  set_solib_svr4_fetch_link_map_offsets
    (gdbarch, nbsd_ilp32_solib_svr4_fetch_link_map_offsets);
}
