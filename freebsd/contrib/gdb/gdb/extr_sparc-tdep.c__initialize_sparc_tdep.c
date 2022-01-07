
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_arch_sparc ;
 int register_gdbarch_init (int ,int ) ;
 int sparc32_gdbarch_init ;

void
_initialize_sparc_tdep (void)
{
  register_gdbarch_init (bfd_arch_sparc, sparc32_gdbarch_init);
}
