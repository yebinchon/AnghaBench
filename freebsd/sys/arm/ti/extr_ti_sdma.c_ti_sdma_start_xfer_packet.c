
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_sdma_softc {int sc_active_channels; struct ti_sdma_channel* sc_channel; } ;
struct ti_sdma_channel {int reg_csdp; int reg_ccr; scalar_t__ need_reg_write; } ;


 int DMA4_CCR (unsigned int) ;
 int DMA4_CCR_PACKET_TRANS ;
 int DMA4_CCR_SEL_SRC_DST_SYNC (int) ;
 int DMA4_CDE (unsigned int) ;
 int DMA4_CDF (unsigned int) ;
 int DMA4_CDSA (unsigned int) ;
 int DMA4_CEN (unsigned int) ;
 int DMA4_CFN (unsigned int) ;
 int DMA4_CSDP (unsigned int) ;
 int DMA4_CSDP_WRITE_MODE (int) ;
 int DMA4_CSE (unsigned int) ;
 int DMA4_CSF (unsigned int) ;
 int DMA4_CSR (unsigned int) ;
 int DMA4_CSSA (unsigned int) ;
 int EINVAL ;
 int ENOMEM ;
 int TI_SDMA_LOCK (struct ti_sdma_softc*) ;
 int TI_SDMA_UNLOCK (struct ti_sdma_softc*) ;
 int ti_sdma_read_4 (struct ti_sdma_softc*,int ) ;
 struct ti_sdma_softc* ti_sdma_sc ;
 int ti_sdma_write_4 (struct ti_sdma_softc*,int ,int) ;

int
ti_sdma_start_xfer_packet(unsigned int ch, unsigned int src_paddr,
                           unsigned long dst_paddr, unsigned int frmcnt,
                           unsigned int elmcnt, unsigned int pktsize)
{
 struct ti_sdma_softc *sc = ti_sdma_sc;
 struct ti_sdma_channel *channel;
 uint32_t ccr;


 if (sc == ((void*)0))
  return (ENOMEM);

 TI_SDMA_LOCK(sc);

 if ((sc->sc_active_channels & (1 << ch)) == 0) {
  TI_SDMA_UNLOCK(sc);
  return (EINVAL);
 }

 channel = &sc->sc_channel[ch];


 if (channel->need_reg_write)
  ti_sdma_write_4(sc, DMA4_CSDP(ch),
      channel->reg_csdp | DMA4_CSDP_WRITE_MODE(1));


 ti_sdma_write_4(sc, DMA4_CEN(ch), elmcnt);


 ti_sdma_write_4(sc, DMA4_CFN(ch), frmcnt);


 ti_sdma_write_4(sc, DMA4_CSSA(ch), src_paddr);
 ti_sdma_write_4(sc, DMA4_CDSA(ch), dst_paddr);


 ti_sdma_write_4(sc, DMA4_CCR(ch),
     channel->reg_ccr | DMA4_CCR_PACKET_TRANS);


 ti_sdma_write_4(sc, DMA4_CSE(ch), 0x0001);


 if (channel->reg_ccr & DMA4_CCR_SEL_SRC_DST_SYNC(1))
  ti_sdma_write_4(sc, DMA4_CSF(ch), pktsize);
 else
  ti_sdma_write_4(sc, DMA4_CDF(ch), pktsize);


 ti_sdma_write_4(sc, DMA4_CDE(ch), 0x0001);


 ti_sdma_write_4(sc, DMA4_CSR(ch), 0x1FFE);


 ccr = ti_sdma_read_4(sc, DMA4_CCR(ch));
 ccr |= (1 << 7);
 ti_sdma_write_4(sc, DMA4_CCR(ch), ccr);


 channel->need_reg_write = 0;

 TI_SDMA_UNLOCK(sc);

 return (0);
}
