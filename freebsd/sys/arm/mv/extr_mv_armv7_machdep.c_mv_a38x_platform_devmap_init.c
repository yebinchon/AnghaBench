
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int platform_t ;
typedef int phandle_t ;
struct TYPE_5__ {int pd_size; int pd_pa; int pd_va; } ;


 int ENOMEM ;
 int ENXIO ;
 int FDT_DEVMAP_MAX ;
 int MV_PCI_VA_IO_BASE ;
 int MV_PCI_VA_MEM_BASE ;
 int OF_child (int) ;
 int OF_finddevice (char*) ;
 int OF_peer (int) ;
 int devmap_register_table (TYPE_1__*) ;
 TYPE_1__* fdt_devmap ;
 int fdt_immr_pa ;
 int fdt_immr_size ;
 int fdt_immr_va ;
 scalar_t__ mv_fdt_is_type (int,char*) ;
 scalar_t__ mv_pci_devmap (int,TYPE_1__*,int ,int ) ;
 scalar_t__ platform_sram_devmap (TYPE_1__*) ;

__attribute__((used)) static int
mv_a38x_platform_devmap_init(platform_t plat)
{
 phandle_t root, child;
 int i;

 i = 0;
 devmap_register_table(&fdt_devmap[0]);

 if ((root = OF_finddevice("/")) == -1)
  return (ENXIO);




 fdt_devmap[i].pd_va = fdt_immr_va;
 fdt_devmap[i].pd_pa = fdt_immr_pa;
 fdt_devmap[i].pd_size = fdt_immr_size;
 i++;




 if (i < FDT_DEVMAP_MAX)
  if (platform_sram_devmap(&fdt_devmap[i]) == 0)
   i++;





 for (child = OF_child(root); child != 0; child = OF_peer(child)) {
  if (mv_fdt_is_type(child, "pci") ||
      mv_fdt_is_type(child, "pciep")) {




   if (i + 1 >= FDT_DEVMAP_MAX)
    return (ENOMEM);

   if (mv_pci_devmap(child, &fdt_devmap[i], MV_PCI_VA_IO_BASE,
        MV_PCI_VA_MEM_BASE) != 0)
    return (ENXIO);
   i += 2;
  }
 }

 return (0);
}
