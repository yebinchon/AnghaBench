
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct versatile_pci_softc {struct rman mem_rman; struct rman io_rman; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int ,int ,int ,int) ;
 int RF_ACTIVE ;



 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 int device_get_parent (int ) ;
 struct versatile_pci_softc* device_get_softc (int ) ;
 int dprintf (char*,int,int ,int ,int ) ;
 int rman_release_resource (struct resource*) ;
 struct resource* rman_reserve_resource (struct rman*,int ,int ,int ,int,int ) ;
 int rman_set_rid (struct resource*,int) ;

__attribute__((used)) static struct resource *
versatile_pci_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{

 struct versatile_pci_softc *sc = device_get_softc(bus);
 struct resource *rv;
 struct rman *rm;

 dprintf("Alloc resources %d, %08lx..%08lx, %ld\n", type, start, end, count);

 switch (type) {
 case 130:
  rm = &sc->io_rman;
  break;
 case 129:
  rm = ((void*)0);
  break;
 case 128:
  rm = &sc->mem_rman;
  break;
 default:
  return (((void*)0));
 }

 if (rm == ((void*)0))
  return (BUS_ALLOC_RESOURCE(device_get_parent(bus),
      child, type, rid, start, end, count, flags));

 rv = rman_reserve_resource(rm, start, end, count, flags, child);
 if (rv == ((void*)0))
  return (((void*)0));

 rman_set_rid(rv, *rid);

 if (flags & RF_ACTIVE) {
  if (bus_activate_resource(child, type, *rid, rv)) {
   rman_release_resource(rv);
   return (((void*)0));
  }
 }
 return (rv);
}
