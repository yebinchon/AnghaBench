
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {scalar_t__ pm_type; } ;


 scalar_t__ PT_X86 ;
 int X86_PG_PKU_MASK ;

__attribute__((used)) static __inline pt_entry_t
pmap_pku_mask_bit(pmap_t pmap)
{

 return (pmap->pm_type == PT_X86 ? X86_PG_PKU_MASK : 0);
}
