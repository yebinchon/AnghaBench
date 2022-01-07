
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ti_sdma_softc {int sc_active_channels; struct ti_sdma_channel* sc_channel; } ;
struct ti_sdma_channel {void (* callback ) (unsigned int,uint32_t,void*) ;int need_reg_write; int reg_csdp; int reg_ccr; int reg_cicr; void* callback_data; } ;


 scalar_t__ DMA4_CCR (unsigned int) ;
 int DMA4_CCR_BLOCK_SYNC (int ) ;
 int DMA4_CCR_DST_ADDRESS_MODE (int) ;
 int DMA4_CCR_FRAME_SYNC (int ) ;
 int DMA4_CCR_READ_PRIORITY (int ) ;
 int DMA4_CCR_SRC_ADDRESS_MODE (int) ;
 int DMA4_CCR_SYNC_TRIGGER (int ) ;
 int DMA4_CCR_WRITE_PRIORITY (int ) ;
 int DMA4_CICR_MISALIGNED_ADRS_ERR_IE ;
 int DMA4_CICR_SECURE_ERR_IE ;
 int DMA4_CICR_SUPERVISOR_ERR_IE ;
 int DMA4_CICR_TRANS_ERR_IE ;
 scalar_t__ DMA4_COLOR (unsigned int) ;
 int DMA4_CSDP_DATA_TYPE (int) ;
 int DMA4_CSDP_DST_BURST_MODE (int ) ;
 int DMA4_CSDP_DST_ENDIANISM (int ) ;
 int DMA4_CSDP_DST_PACKED (int ) ;
 int DMA4_CSDP_SRC_BURST_MODE (int ) ;
 int DMA4_CSDP_SRC_ENDIANISM (int ) ;
 int DMA4_CSDP_SRC_PACKED (int ) ;
 int DMA4_CSDP_WRITE_MODE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 unsigned int NUM_DMA_CHANNELS ;
 int TI_SDMA_LOCK (struct ti_sdma_softc*) ;
 int TI_SDMA_UNLOCK (struct ti_sdma_softc*) ;
 struct ti_sdma_softc* ti_sdma_sc ;
 int ti_sdma_write_4 (struct ti_sdma_softc*,scalar_t__,int) ;

int
ti_sdma_activate_channel(unsigned int *ch,
                          void (*callback)(unsigned int ch, uint32_t status, void *data),
                          void *data)
{
 struct ti_sdma_softc *sc = ti_sdma_sc;
 struct ti_sdma_channel *channel = ((void*)0);
 uint32_t addr;
 unsigned int i;


 if (sc == ((void*)0))
  return (ENOMEM);

 if (ch == ((void*)0))
  return (EINVAL);

 TI_SDMA_LOCK(sc);


 if (sc->sc_active_channels == 0xffffffff) {
  TI_SDMA_UNLOCK(sc);
  return (ENOMEM);
 }


 for (i = 0; i < NUM_DMA_CHANNELS; i++) {
  if (!(sc->sc_active_channels & (0x1 << i))) {
   sc->sc_active_channels |= (0x1 << i);
   *ch = i;
   break;
  }
 }


 channel = &sc->sc_channel[*ch];

 channel->callback = callback;
 channel->callback_data = data;

 channel->need_reg_write = 1;


 channel->reg_csdp = DMA4_CSDP_DATA_TYPE(0x2)
  | DMA4_CSDP_SRC_BURST_MODE(0)
  | DMA4_CSDP_DST_BURST_MODE(0)
  | DMA4_CSDP_SRC_ENDIANISM(0)
  | DMA4_CSDP_DST_ENDIANISM(0)
  | DMA4_CSDP_WRITE_MODE(0)
  | DMA4_CSDP_SRC_PACKED(0)
  | DMA4_CSDP_DST_PACKED(0);

 channel->reg_ccr = DMA4_CCR_DST_ADDRESS_MODE(1)
  | DMA4_CCR_SRC_ADDRESS_MODE(1)
  | DMA4_CCR_READ_PRIORITY(0)
  | DMA4_CCR_WRITE_PRIORITY(0)
  | DMA4_CCR_SYNC_TRIGGER(0)
  | DMA4_CCR_FRAME_SYNC(0)
  | DMA4_CCR_BLOCK_SYNC(0);

 channel->reg_cicr = DMA4_CICR_TRANS_ERR_IE
  | DMA4_CICR_SECURE_ERR_IE
  | DMA4_CICR_SUPERVISOR_ERR_IE
  | DMA4_CICR_MISALIGNED_ADRS_ERR_IE;


 for (addr = DMA4_CCR(*ch); addr <= DMA4_COLOR(*ch); addr += 4)
  ti_sdma_write_4(sc, addr, 0x00000000);

 TI_SDMA_UNLOCK(sc);

 return 0;
}
