
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int phandle_t ;
typedef int device_t ;


 int OF_xref_from_node (int ) ;
 int intr_map_msi (int ,int ,int ,int,int *,int *) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
tegra_pcib_map_msi(device_t pci, device_t child, int irq, uint64_t *addr,
    uint32_t *data)
{
 phandle_t msi_parent;





 msi_parent = OF_xref_from_node(ofw_bus_get_node(pci));
 return (intr_map_msi(pci, child, msi_parent, irq, addr, data));
}
