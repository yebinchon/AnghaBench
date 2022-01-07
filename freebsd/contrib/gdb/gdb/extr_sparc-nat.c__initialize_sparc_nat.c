
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * sparc32_collect_fpregset ;
 int * sparc32_collect_gregset ;
 int * sparc32_fpregset_supplies_p ;
 int * sparc32_gregset_supplies_p ;
 int sparc32_sunos4_gregset ;
 int * sparc32_supply_fpregset ;
 int * sparc32_supply_gregset ;
 int * sparc_collect_fpregset ;
 int * sparc_collect_gregset ;
 int * sparc_fpregset_supplies_p ;
 int * sparc_gregset ;
 int * sparc_gregset_supplies_p ;
 int * sparc_supply_fpregset ;
 int * sparc_supply_gregset ;

void
_initialize_sparc_nat (void)
{

  if (sparc_gregset == ((void*)0))
    sparc_gregset = &sparc32_sunos4_gregset;
  if (sparc_supply_gregset == ((void*)0))
    sparc_supply_gregset = sparc32_supply_gregset;
  if (sparc_collect_gregset == ((void*)0))
    sparc_collect_gregset = sparc32_collect_gregset;
  if (sparc_supply_fpregset == ((void*)0))
    sparc_supply_fpregset = sparc32_supply_fpregset;
  if (sparc_collect_fpregset == ((void*)0))
    sparc_collect_fpregset = sparc32_collect_fpregset;
  if (sparc_gregset_supplies_p == ((void*)0))
    sparc_gregset_supplies_p = sparc32_gregset_supplies_p;
  if (sparc_fpregset_supplies_p == ((void*)0))
    sparc_fpregset_supplies_p = sparc32_fpregset_supplies_p;
}
