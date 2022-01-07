
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_sdma_softc {int sc_active_channels; } ;


 int DMA4_CSR (unsigned int) ;
 int EINVAL ;
 int ENOMEM ;
 int TI_SDMA_LOCK (struct ti_sdma_softc*) ;
 int TI_SDMA_UNLOCK (struct ti_sdma_softc*) ;
 int ti_sdma_read_4 (struct ti_sdma_softc*,int ) ;
 struct ti_sdma_softc* ti_sdma_sc ;

int
ti_sdma_get_channel_status(unsigned int ch, uint32_t *status)
{
 struct ti_sdma_softc *sc = ti_sdma_sc;
 uint32_t csr;


 if (sc == ((void*)0))
  return (ENOMEM);

 TI_SDMA_LOCK(sc);

 if ((sc->sc_active_channels & (1 << ch)) == 0) {
  TI_SDMA_UNLOCK(sc);
  return (EINVAL);
 }

 TI_SDMA_UNLOCK(sc);

 csr = ti_sdma_read_4(sc, DMA4_CSR(ch));

 if (status != ((void*)0))
  *status = csr;

 return (0);
}
