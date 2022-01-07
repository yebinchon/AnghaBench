
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_offset_t ;
struct mv_pci_range {void* base_parent; int len; } ;
struct devmap_entry {void* pd_pa; int pd_size; void* pd_va; } ;
typedef int phandle_t ;


 int mv_pci_ranges_decode (int ,struct mv_pci_range*,struct mv_pci_range*) ;

int
mv_pci_devmap(phandle_t node, struct devmap_entry *devmap, vm_offset_t io_va,
    vm_offset_t mem_va)
{
 struct mv_pci_range io_space, mem_space;
 int error;

 if ((error = mv_pci_ranges_decode(node, &io_space, &mem_space)) != 0)
  return (error);

 devmap->pd_va = (io_va ? io_va : io_space.base_parent);
 devmap->pd_pa = io_space.base_parent;
 devmap->pd_size = io_space.len;
 devmap++;

 devmap->pd_va = (mem_va ? mem_va : mem_space.base_parent);
 devmap->pd_pa = mem_space.base_parent;
 devmap->pd_size = mem_space.len;
 return (0);
}
