
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int * bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int bus_space_map (int *,int ,int ,int ,int *) ;
 int memmap_bus ;
 int ofw_reg_to_paddr (int ,int,int *,int *,int *) ;

int
OF_decode_addr(phandle_t dev, int regno, bus_space_tag_t *tag,
    bus_space_handle_t *handle, bus_size_t *sz)
{
 bus_addr_t addr;
 bus_size_t size;
 int err;

 err = ofw_reg_to_paddr(dev, regno, &addr, &size, ((void*)0));
 if (err != 0)
  return (err);

 *tag = &memmap_bus;

 if (sz != ((void*)0))
  *sz = size;

 return (bus_space_map(*tag, addr, size, 0, handle));
}
