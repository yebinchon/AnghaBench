
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdvi_softc {int pci_rid; } ;


 int PCI_RID2BUS (int ) ;
 int PCI_RID2FUNC (int ) ;
 int PCI_RID2SLOT (int ) ;
 int pci_cfgregread (int ,int ,int ,int,int) ;

__attribute__((used)) static inline uint32_t
amdvi_pci_read(struct amdvi_softc *softc, int off)
{

 return (pci_cfgregread(PCI_RID2BUS(softc->pci_rid),
     PCI_RID2SLOT(softc->pci_rid), PCI_RID2FUNC(softc->pci_rid),
     off, 4));
}
