
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* mmu_mapin ) (scalar_t__,size_t) ;} ;


 int memcpy (void*,void const*,size_t) ;
 TYPE_1__* mmu_ops ;
 int stub1 (scalar_t__,size_t) ;

__attribute__((used)) static ssize_t
sparc64_copyin(const void *src, vm_offset_t dest, size_t len)
{

 mmu_ops->mmu_mapin(dest, len);
 memcpy((void *)dest, src, len);
 return (len);
}
