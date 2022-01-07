
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int NPT2_IN_PG ;
 int PTE1_SIZE ;
 scalar_t__ pt2map_entry (int) ;

__attribute__((used)) static __inline vm_offset_t
pt2map_pt2pg(vm_offset_t va)
{

 va &= ~(NPT2_IN_PG * PTE1_SIZE - 1);
 return ((vm_offset_t)pt2map_entry(va));
}
