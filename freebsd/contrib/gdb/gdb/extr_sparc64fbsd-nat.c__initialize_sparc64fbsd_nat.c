
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sparc64fbsd_gregset ;
 int * sparc_gregset ;

void
_initialize_sparc64fbsd_nat (void)
{
  sparc_gregset = &sparc64fbsd_gregset;
}
