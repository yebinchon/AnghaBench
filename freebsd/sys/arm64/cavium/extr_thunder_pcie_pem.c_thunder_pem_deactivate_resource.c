
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int bus_space_unmap (int *,scalar_t__,scalar_t__) ;
 int memmap_bus ;
 int rman_deactivate_resource (struct resource*) ;
 scalar_t__ rman_get_bushandle (struct resource*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_virtual (struct resource*,int *) ;

__attribute__((used)) static int
thunder_pem_deactivate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 bus_size_t psize;
 bus_space_handle_t vaddr;

 psize = (bus_size_t)rman_get_size(r);
 vaddr = rman_get_bushandle(r);

 if (vaddr != 0) {
  bus_space_unmap(&memmap_bus, vaddr, psize);
  rman_set_virtual(r, ((void*)0));
  rman_set_bushandle(r, 0);
 }

 return (rman_deactivate_resource(r));
}
