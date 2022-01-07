
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int lowest_pc; int jb_elt_size; int jb_pc; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int ARM_FBSD_JB_ELEMENT_SIZE ;
 int ARM_FBSD_JB_PC ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;

__attribute__((used)) static void
arm_freebsd_init_abi_common (struct gdbarch_info info,
       struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  tdep->lowest_pc = 0x8000;

  tdep->jb_pc = ARM_FBSD_JB_PC;
  tdep->jb_elt_size = ARM_FBSD_JB_ELEMENT_SIZE;
}
