
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_pem_softc {int id; } ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int EINVAL ;
 int PCI_RES_BUS ;
 int bus_generic_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;
 struct thunder_pem_softc* device_get_softc (int ) ;
 int pci_domain_adjust_bus (int ,int ,struct resource*,int ,int ) ;
 int rman_adjust_resource (struct resource*,int ,int ) ;
 int rman_is_region_manager (struct resource*,struct rman*) ;
 struct rman* thunder_pem_rman (struct thunder_pem_softc*,int) ;

__attribute__((used)) static int
thunder_pem_adjust_resource(device_t dev, device_t child, int type,
    struct resource *res, rman_res_t start, rman_res_t end)
{
 struct thunder_pem_softc *sc;
 struct rman *rm;

 sc = device_get_softc(dev);





 rm = thunder_pem_rman(sc, type);
 if (rm == ((void*)0))
  return (bus_generic_adjust_resource(dev, child, type, res,
      start, end));
 if (!rman_is_region_manager(res, rm))




  return (EINVAL);
 return (rman_adjust_resource(res, start, end));
}
