
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aac_softc {int flags; int aac_max_msix; int aac_vector_cap; int aac_max_fibs; scalar_t__ aac_hwif; void* msi_enabled; void* msi_tupelo; int aac_dev; } ;
typedef int device_t ;


 int AAC_ACCESS_DEVREG (struct aac_softc*,int ) ;
 int AAC_ENABLE_MSIX ;
 int AAC_FLAGS_SYNC_MODE ;
 scalar_t__ AAC_HWIF_SRC ;
 int AAC_MAX_MSIX ;
 int AAC_PCI_MSI_ENABLE ;
 void* FALSE ;
 char* HBA_FLAGS_DBG_DEBUG_B ;
 int PCIY_MSIX ;
 void* TRUE ;
 int aac_find_pci_capability (struct aac_softc*,int ) ;
 int device_printf (int ,char*,...) ;
 int fwprintf (struct aac_softc*,char*,char*,void*,int,int,int) ;
 int pci_alloc_msi (int ,int*) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_msix_count (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
aac_define_int_mode(struct aac_softc *sc)
{
 device_t dev;
 int cap, msi_count, error = 0;
 uint32_t val;

 dev = sc->aac_dev;

 if (sc->flags & AAC_FLAGS_SYNC_MODE) {
  device_printf(dev, "using line interrupts\n");
  sc->aac_max_msix = 1;
  sc->aac_vector_cap = sc->aac_max_fibs;
  return;
 }


 if (sc->aac_max_msix == 0) {
  if (sc->aac_hwif == AAC_HWIF_SRC) {
   msi_count = 1;
   if ((error = pci_alloc_msi(dev, &msi_count)) != 0) {
    device_printf(dev, "alloc msi failed - err=%d; "
        "will use INTx\n", error);
    pci_release_msi(dev);
   } else {
    sc->msi_tupelo = TRUE;
   }
  }
  if (sc->msi_tupelo)
   device_printf(dev, "using MSI interrupts\n");
  else
   device_printf(dev, "using line interrupts\n");

  sc->aac_max_msix = 1;
  sc->aac_vector_cap = sc->aac_max_fibs;
  return;
 }


 msi_count = pci_msix_count(dev);
 if (msi_count > AAC_MAX_MSIX)
  msi_count = AAC_MAX_MSIX;
 if (msi_count > sc->aac_max_msix)
  msi_count = sc->aac_max_msix;
 if (msi_count == 0 || (error = pci_alloc_msix(dev, &msi_count)) != 0) {
  device_printf(dev, "alloc msix failed - msi_count=%d, err=%d; "
       "will try MSI\n", msi_count, error);
  pci_release_msi(dev);
 } else {
  sc->msi_enabled = TRUE;
  device_printf(dev, "using MSI-X interrupts (%u vectors)\n",
   msi_count);
 }

 if (!sc->msi_enabled) {
  msi_count = 1;
  if ((error = pci_alloc_msi(dev, &msi_count)) != 0) {
   device_printf(dev, "alloc msi failed - err=%d; "
               "will use INTx\n", error);
   pci_release_msi(dev);
  } else {
   sc->msi_enabled = TRUE;
   device_printf(dev, "using MSI interrupts\n");
  }
 }

 if (sc->msi_enabled) {

  cap = aac_find_pci_capability(sc, PCIY_MSIX);
  val = (cap != 0 ? pci_read_config(dev, cap + 2, 2) : 0);
  if (!(val & AAC_PCI_MSI_ENABLE)) {
   pci_release_msi(dev);
   sc->msi_enabled = FALSE;
  }
 }

 if (!sc->msi_enabled) {
  device_printf(dev, "using legacy interrupts\n");
  sc->aac_max_msix = 1;
 } else {
  AAC_ACCESS_DEVREG(sc, AAC_ENABLE_MSIX);
  if (sc->aac_max_msix > msi_count)
   sc->aac_max_msix = msi_count;
 }
 sc->aac_vector_cap = sc->aac_max_fibs / sc->aac_max_msix;

 fwprintf(sc, HBA_FLAGS_DBG_DEBUG_B, "msi_enabled %d vector_cap %d max_fibs %d max_msix %d",
  sc->msi_enabled,sc->aac_vector_cap, sc->aac_max_fibs, sc->aac_max_msix);
}
