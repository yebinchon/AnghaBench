
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sparc32nbsd_gregset ;
 int * sparc_gregset ;

void
_initialize_sparcnbsd_nat (void)
{
  sparc_gregset = &sparc32nbsd_gregset;
}
