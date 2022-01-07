
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mv_pcib_softc {int ap_segment; } ;
typedef int device_t ;


 int BUS_RELEASE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int PCI_RES_BUS ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 struct mv_pcib_softc* device_get_softc (int ) ;
 int pci_domain_release_bus (int ,int ,int,struct resource*) ;
 int rman_release_resource (struct resource*) ;

__attribute__((used)) static int
mv_pcib_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *res)
{






 if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY)
  return (BUS_RELEASE_RESOURCE(device_get_parent(dev), child,
      type, rid, res));

 return (rman_release_resource(res));
}
