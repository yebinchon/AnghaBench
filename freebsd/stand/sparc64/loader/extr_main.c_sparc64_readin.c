
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int ssize_t ;
struct TYPE_2__ {int (* mmu_mapin ) (scalar_t__,size_t const) ;} ;


 TYPE_1__* mmu_ops ;
 int read (int const,void*,size_t const) ;
 int stub1 (scalar_t__,size_t const) ;

__attribute__((used)) static ssize_t
sparc64_readin(const int fd, vm_offset_t va, const size_t len)
{

 mmu_ops->mmu_mapin(va, len);
 return (read(fd, (void *)va, len));
}
