
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_subclass {int ps_subclass; struct pci_progif* ps_progif; } ;
struct pci_progif {scalar_t__ pi_code; } ;
struct pci_class {int pc_class; struct pci_subclass* pc_subclass; } ;


 int BIOSPCI_32BITS ;
 int biospci_addinfo (int ,struct pci_class*,struct pci_subclass*,struct pci_progif*) ;
 int biospci_find_devclass (scalar_t__,int,int *) ;
 int biospci_read_config (int ,int ,int ,int *) ;
 struct pci_class* pci_classes ;

__attribute__((used)) static void
biospci_enumerate(void)
{
    int device_index, err;
    uint32_t locator, devid;
    struct pci_class *pc;
    struct pci_subclass *psc;
    struct pci_progif *ppi;


    for (pc = pci_classes; pc->pc_class >= 0; pc++) {

 for (psc = pc->pc_subclass; psc->ps_subclass >= 0; psc++) {

     for (ppi = psc->ps_progif; ppi->pi_code >= 0; ppi++) {


  for (device_index = 0; ; device_index++) {

      err = biospci_find_devclass((pc->pc_class << 16)
   + (psc->ps_subclass << 8) + ppi->pi_code,
   device_index, &locator);
      if (err != 0)
   break;


      err = biospci_read_config(locator, 0, BIOSPCI_32BITS, &devid);
      if (err != 0)
   break;


      biospci_addinfo(devid, pc, psc, ppi);
  }
     }
 }
    }
}
