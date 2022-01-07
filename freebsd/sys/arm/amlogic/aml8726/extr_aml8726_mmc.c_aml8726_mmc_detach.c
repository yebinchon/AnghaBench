
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_mmc_softc {int * res; int dmatag; int dmamap; int ih_cookie; int ch; int * cmd; } ;
typedef int device_t ;


 int AML_MMC_IRQ_STATUS_CLEAR_IRQ ;
 int AML_MMC_IRQ_STATUS_REG ;
 int AML_MMC_LOCK (struct aml8726_mmc_softc*) ;
 int AML_MMC_LOCK_DESTROY (struct aml8726_mmc_softc*) ;
 int AML_MMC_UNLOCK (struct aml8726_mmc_softc*) ;
 int CSR_WRITE_4 (struct aml8726_mmc_softc*,int ,int ) ;
 int EBUSY ;
 int aml8726_mmc_power_off (struct aml8726_mmc_softc*) ;
 int aml8726_mmc_soft_reset (struct aml8726_mmc_softc*,int) ;
 int aml8726_mmc_spec ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_stop (int *) ;
 struct aml8726_mmc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_mmc_detach(device_t dev)
{
 struct aml8726_mmc_softc *sc = device_get_softc(dev);

 AML_MMC_LOCK(sc);

 if (sc->cmd != ((void*)0)) {
  AML_MMC_UNLOCK(sc);
  return (EBUSY);
 }





 (void)aml8726_mmc_power_off(sc);
 aml8726_mmc_soft_reset(sc, 0);
 CSR_WRITE_4(sc, AML_MMC_IRQ_STATUS_REG, AML_MMC_IRQ_STATUS_CLEAR_IRQ);


 callout_stop(&sc->ch);

 AML_MMC_UNLOCK(sc);

 bus_generic_detach(dev);

 bus_teardown_intr(dev, sc->res[1], sc->ih_cookie);

 bus_dmamap_destroy(sc->dmatag, sc->dmamap);

 bus_dma_tag_destroy(sc->dmatag);

 AML_MMC_LOCK_DESTROY(sc);

 bus_release_resources(dev, aml8726_mmc_spec, sc->res);

 return (0);
}
