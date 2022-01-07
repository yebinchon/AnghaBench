
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct amdvi_softc {int pci_cap; } ;


 int AMDVI_PCI_CAP_NPCACHE ;
 int KASSERT (struct amdvi_softc*,char*) ;
 int amdvi_inv_domain (struct amdvi_softc*,int ) ;
 int amdvi_wait (struct amdvi_softc*) ;
 struct amdvi_softc* device_get_softc (int ) ;
 int ivhd_count ;
 int * ivhd_devs ;

__attribute__((used)) static void
amdvi_do_inv_domain(uint16_t domain_id, bool create)
{
 struct amdvi_softc *softc;
 int i;

 for (i = 0; i < ivhd_count; i++) {
  softc = device_get_softc(ivhd_devs[i]);
  KASSERT(softc, ("softc is NULL"));
  amdvi_inv_domain(softc, domain_id);
  amdvi_wait(softc);
 }
}
