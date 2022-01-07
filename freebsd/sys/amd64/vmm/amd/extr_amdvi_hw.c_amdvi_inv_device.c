
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct amdvi_softc {int dummy; } ;


 int KASSERT (struct amdvi_softc*,char*) ;
 int amdvi_cmd_inv_dte (struct amdvi_softc*,int ) ;
 int amdvi_cmd_inv_iotlb (struct amdvi_softc*,int ) ;
 scalar_t__ amdvi_dev_support_iotlb (struct amdvi_softc*,int ) ;
 struct amdvi_softc* amdvi_find_iommu (int ) ;
 int amdvi_wait (struct amdvi_softc*) ;

__attribute__((used)) static void
amdvi_inv_device(uint16_t devid)
{
 struct amdvi_softc *softc;

 softc = amdvi_find_iommu(devid);
 KASSERT(softc, ("softc is NULL"));

 amdvi_cmd_inv_dte(softc, devid);




 amdvi_wait(softc);
}
