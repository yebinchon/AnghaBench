
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct devmap_entry {int dummy; } ;
typedef int phandle_t ;



int
mv_default_fdt_pci_devmap(phandle_t node, struct devmap_entry *devmap,
    vm_offset_t io_va, vm_offset_t mem_va)
{

 return (0);
}
