
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int set_gdbarch_in_solib_call_trampoline (struct gdbarch*,int ) ;
 int sparc32nbsd_init_abi (struct gdbarch_info,struct gdbarch*) ;
 int sparcnbsd_aout_in_solib_call_trampoline ;

__attribute__((used)) static void
sparc32nbsd_aout_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  sparc32nbsd_init_abi (info, gdbarch);

  set_gdbarch_in_solib_call_trampoline
    (gdbarch, sparcnbsd_aout_in_solib_call_trampoline);
}
