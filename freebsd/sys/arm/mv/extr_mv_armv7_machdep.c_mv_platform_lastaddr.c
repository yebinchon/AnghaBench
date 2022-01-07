
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int platform_t ;


 int fdt_immr_va ;

__attribute__((used)) static vm_offset_t
mv_platform_lastaddr(platform_t plat)
{

 return (fdt_immr_va);
}
