
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
struct TYPE_2__ {int pmap; } ;


 TYPE_1__* kernel_map ;
 int pmap_extract (int ,int ) ;

__attribute__((used)) static uint64_t
MmGetPhysicalAddress(void *base)
{
 return (pmap_extract(kernel_map->pmap, (vm_offset_t)base));
}
