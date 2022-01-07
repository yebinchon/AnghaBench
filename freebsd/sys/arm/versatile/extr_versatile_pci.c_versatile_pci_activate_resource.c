
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int BUS_ACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int ENXIO ;



 int device_get_parent (int ) ;
 int fdtbus_bs_tag ;
 int pmap_mapdev (int ,int ) ;
 int rman_activate_resource (struct resource*) ;
 int rman_get_size (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_bustag (struct resource*,int ) ;

__attribute__((used)) static int
versatile_pci_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 vm_offset_t vaddr;
 int res;

 switch(type) {
 case 128:
 case 130:
  vaddr = (vm_offset_t)pmap_mapdev(rman_get_start(r),
    rman_get_size(r));
  rman_set_bushandle(r, vaddr);
  rman_set_bustag(r, fdtbus_bs_tag);
  res = rman_activate_resource(r);
  break;
 case 129:
  res = (BUS_ACTIVATE_RESOURCE(device_get_parent(bus),
      child, type, rid, r));
  break;
 default:
  res = ENXIO;
  break;
 }

 return (res);
}
