
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
typedef int pt2_entry_t ;


 scalar_t__ page_pt2off (int ) ;

__attribute__((used)) static __inline pt2_entry_t *
page_pt2(vm_offset_t pgva, u_int pt1_idx)
{

 return ((pt2_entry_t *)(pgva + page_pt2off(pt1_idx)));
}
