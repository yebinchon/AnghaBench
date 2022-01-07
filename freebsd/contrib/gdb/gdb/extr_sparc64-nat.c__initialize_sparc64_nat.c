
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sparc64_collect_fpregset ;
 int sparc64_collect_gregset ;
 int sparc64_fpregset_supplies_p ;
 int sparc64_gregset_supplies_p ;
 int sparc64_supply_fpregset ;
 int sparc64_supply_gregset ;
 int sparc_collect_fpregset ;
 int sparc_collect_gregset ;
 int sparc_fpregset_supplies_p ;
 int sparc_gregset_supplies_p ;
 int sparc_supply_fpregset ;
 int sparc_supply_gregset ;

void
_initialize_sparc64_nat (void)
{
  sparc_supply_gregset = sparc64_supply_gregset;
  sparc_collect_gregset = sparc64_collect_gregset;
  sparc_supply_fpregset = sparc64_supply_fpregset;
  sparc_collect_fpregset = sparc64_collect_fpregset;
  sparc_gregset_supplies_p = sparc64_gregset_supplies_p;
  sparc_fpregset_supplies_p = sparc64_fpregset_supplies_p;
}
