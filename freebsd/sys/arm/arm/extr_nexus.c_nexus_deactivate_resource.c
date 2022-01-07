
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
struct resource {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_space_unmap (int ,scalar_t__,scalar_t__) ;
 int fdtbus_bs_tag ;
 int intr_deactivate_irq (int ,struct resource*) ;
 int pmap_unmapdev (int ,int ) ;
 int rman_deactivate_resource (struct resource*) ;
 scalar_t__ rman_get_bushandle (struct resource*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_virtual (struct resource*,int *) ;

__attribute__((used)) static int
nexus_deactivate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 bus_size_t psize;
 bus_space_handle_t vaddr;

 if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
  psize = (bus_size_t)rman_get_size(r);
  vaddr = rman_get_bushandle(r);

  if (vaddr != 0) {



   pmap_unmapdev((vm_offset_t)vaddr, (vm_size_t)psize);

   rman_set_virtual(r, ((void*)0));
   rman_set_bushandle(r, 0);
  }
 } else if (type == SYS_RES_IRQ) {



 }

 return (rman_deactivate_resource(r));
}
