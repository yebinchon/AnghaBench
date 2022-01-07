
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 scalar_t__ AP_BOOTPT_SZ ;
 scalar_t__ GiB (int) ;
 scalar_t__ Maxmem ;
 scalar_t__ atop (scalar_t__) ;

__attribute__((used)) static bool
is_mpboot_good(vm_paddr_t start, vm_paddr_t end)
{

 return (start + AP_BOOTPT_SZ <= GiB(4) && atop(end) < Maxmem);
}
