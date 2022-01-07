
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aac_softc {int aac_dev; } ;
typedef int caddr_t ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int copyout (int ,int ,int) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int pci_get_bus (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static int
aac_get_pci_info(struct aac_softc *sc, caddr_t uptr)
{
 struct aac_pci_info {
  u_int32_t bus;
  u_int32_t slot;
 } pciinf;
 int error;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 pciinf.bus = pci_get_bus(sc->aac_dev);
 pciinf.slot = pci_get_slot(sc->aac_dev);

 error = copyout((caddr_t)&pciinf, uptr,
   sizeof(struct aac_pci_info));

 return (error);
}
