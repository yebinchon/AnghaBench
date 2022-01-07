
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int u_int ;


 scalar_t__ page_pt2off (int ) ;

__attribute__((used)) static __inline vm_paddr_t
page_pt2pa(vm_paddr_t pgpa, u_int pt1_idx)
{

 return (pgpa + page_pt2off(pt1_idx));
}
