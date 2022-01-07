
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int pt_entry_t ;


 scalar_t__ KERNBASE ;
 int X86_PG_RW ;
 scalar_t__ _end ;
 scalar_t__ brwsection ;
 scalar_t__ btext ;
 scalar_t__ etext ;
 int pg_nx ;
 scalar_t__ round_2mpage (scalar_t__) ;
 scalar_t__ trunc_2mpage (scalar_t__) ;

__attribute__((used)) static inline pt_entry_t
bootaddr_rwx(vm_paddr_t pa)
{
 if (pa < trunc_2mpage(btext - KERNBASE) ||
     pa >= trunc_2mpage(_end - KERNBASE))
  return (X86_PG_RW | pg_nx);







 if (pa >= trunc_2mpage(brwsection - KERNBASE))
  return (X86_PG_RW | pg_nx);
 if (pa < round_2mpage(etext - KERNBASE))
  return (0);
 return (pg_nx);
}
