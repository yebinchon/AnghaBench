
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int BUS_SPACE_MAP_PREFETCHABLE ;
 int OFW_PADDR_NOT_PCI ;
 int OFW_PCI_PHYS_HI_PREFETCHABLE ;
 int bus_space_map (int ,int ,int ,int,int *) ;
 int fdtbus_bs_tag ;
 int ofw_reg_to_paddr (int ,int,int *,int *,int*) ;

int
OF_decode_addr(phandle_t dev, int regno, bus_space_tag_t *tag,
    bus_space_handle_t *handle, bus_size_t *sz)
{
 bus_addr_t addr;
 bus_size_t size;
 pcell_t pci_hi;
 int flags, res;

 res = ofw_reg_to_paddr(dev, regno, &addr, &size, &pci_hi);
 if (res < 0)
  return (res);
 *tag = fdtbus_bs_tag;
 flags = 0;


 if (sz != ((void*)0))
  *sz = size;

 return (bus_space_map(*tag, addr, size, flags, handle));
}
