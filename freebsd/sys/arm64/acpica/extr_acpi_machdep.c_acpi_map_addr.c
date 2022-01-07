
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_generic_address {scalar_t__ SpaceId; int Address; } ;
typedef int * bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int ENXIO ;
 int bus_space_map (int *,int ,int ,int ,int *) ;
 int memmap_bus ;

int
acpi_map_addr(struct acpi_generic_address *addr, bus_space_tag_t *tag,
    bus_space_handle_t *handle, bus_size_t size)
{
 bus_addr_t phys;


 if (addr->SpaceId != 0)
  return (ENXIO);

 phys = addr->Address;
 *tag = &memmap_bus;

 return (bus_space_map(*tag, phys, size, 0, handle));
}
