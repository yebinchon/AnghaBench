
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int iotlb; int ivhd_flag; int pci_cap; int dev; } ;


 int AMDVI_PCI_CAP_IOTLB ;
 int IVHD_FLAG_IOTLB ;
 int amdvi_enable_iotlb ;
 int device_printf (int ,char*) ;

__attribute__((used)) static inline void
amdvi_hw_enable_iotlb(struct amdvi_softc *softc)
{

 softc->iotlb = 0;
}
