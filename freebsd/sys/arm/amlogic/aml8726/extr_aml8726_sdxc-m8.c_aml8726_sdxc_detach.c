
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_sdxc_softc {int * res; int dmatag; int dmamap; int ih_cookie; int * cmd; } ;
typedef int device_t ;


 int AML_SDXC_IRQ_ENABLE_REG ;
 int AML_SDXC_LOCK (struct aml8726_sdxc_softc*) ;
 int AML_SDXC_LOCK_DESTROY (struct aml8726_sdxc_softc*) ;
 int AML_SDXC_UNLOCK (struct aml8726_sdxc_softc*) ;
 int CSR_WRITE_4 (struct aml8726_sdxc_softc*,int ,int ) ;
 int EBUSY ;
 int aml8726_sdxc_power_off (struct aml8726_sdxc_softc*) ;
 int aml8726_sdxc_soft_reset (struct aml8726_sdxc_softc*) ;
 int aml8726_sdxc_spec ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct aml8726_sdxc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_sdxc_detach(device_t dev)
{
 struct aml8726_sdxc_softc *sc = device_get_softc(dev);

 AML_SDXC_LOCK(sc);

 if (sc->cmd != ((void*)0)) {
  AML_SDXC_UNLOCK(sc);
  return (EBUSY);
 }





 aml8726_sdxc_power_off(sc);
 aml8726_sdxc_soft_reset(sc);
 CSR_WRITE_4(sc, AML_SDXC_IRQ_ENABLE_REG, 0);

 AML_SDXC_UNLOCK(sc);

 bus_generic_detach(dev);

 bus_teardown_intr(dev, sc->res[1], sc->ih_cookie);

 bus_dmamap_destroy(sc->dmatag, sc->dmamap);

 bus_dma_tag_destroy(sc->dmatag);

 AML_SDXC_LOCK_DESTROY(sc);

 bus_release_resources(dev, aml8726_sdxc_spec, sc->res);

 return (0);
}
