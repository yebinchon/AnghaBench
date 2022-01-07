
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int pt_entry_t ;


 int atomic_fcmpset_long (int*,int*,int) ;

__attribute__((used)) static __inline void
pmap_pte_props(pt_entry_t *pte, u_long bits, u_long mask)
{
 u_long opte, npte;

 opte = *(u_long *)pte;
 do {
  npte = opte & ~mask;
  npte |= bits;
 } while (npte != opte && !atomic_fcmpset_long((u_long *)pte, &opte,
     npte));
}
