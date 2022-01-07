
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int fdt_immr_va ;

vm_offset_t
platform_lastaddr(void)
{

 return (fdt_immr_va);
}
