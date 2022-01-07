
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int64_t ;
typedef int pd_entry_t ;


 int KASSERT (int,char*) ;
 unsigned long NPDEPGSHIFT ;
 unsigned long NPDPEPGSHIFT ;
 unsigned long NPML4EPGSHIFT ;
 int PDRSHIFT ;
 int * PDmap ;
 int VM_MAXUSER_ADDRESS ;

__attribute__((used)) static __inline pd_entry_t *
vtopde(vm_offset_t va)
{
 u_int64_t mask = ((1ul << (NPDEPGSHIFT + NPDPEPGSHIFT + NPML4EPGSHIFT)) - 1);

 KASSERT(va >= VM_MAXUSER_ADDRESS, ("vtopde on a uva/gpa 0x%0lx", va));

 return (PDmap + ((va >> PDRSHIFT) & mask));
}
