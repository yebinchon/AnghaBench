
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_pem_softc {int id; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int BUS_RELEASE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int PCI_RES_BUS ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 struct thunder_pem_softc* device_get_softc (int ) ;
 int pci_domain_release_bus (int ,int ,int,struct resource*) ;
 int rman_release_resource (struct resource*) ;

__attribute__((used)) static int
thunder_pem_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *res)
{
 device_t parent_dev;







 parent_dev = device_get_parent(device_get_parent(dev));

 if ((type != SYS_RES_MEMORY) && (type != SYS_RES_IOPORT))
  return (BUS_RELEASE_RESOURCE(parent_dev, child,
      type, rid, res));

 return (rman_release_resource(res));
}
