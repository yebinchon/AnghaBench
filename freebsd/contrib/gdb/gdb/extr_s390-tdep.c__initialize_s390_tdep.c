
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_arch_s390 ;
 int register_gdbarch_init (int ,int ) ;
 int s390_gdbarch_init ;

void
_initialize_s390_tdep (void)
{


  register_gdbarch_init (bfd_arch_s390, s390_gdbarch_init);
}
