
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_data {int len; int flags; int data; } ;
struct mmc_command {int opcode; int flags; int error; int arg; struct mmc_data* data; } ;
struct TYPE_2__ {int error; scalar_t__ time; } ;
struct aml8726_sdxc_softc {int auto_fill_flush; int ch; TYPE_1__ busy; struct mmc_command* cmd; int dmamap; int dmatag; } ;
typedef scalar_t__ bus_addr_t ;


 int AML_SDXC_CMD_ARGUMENT_REG ;
 int AML_SDXC_CMD_TIMEOUT ;
 int AML_SDXC_CNTRL_PKG_LEN_MASK ;
 int AML_SDXC_CNTRL_PKG_LEN_SHIFT ;
 int AML_SDXC_CNTRL_REG ;
 int AML_SDXC_DMA_ADDR_REG ;
 int AML_SDXC_IRQ_ENABLE_DMA_DONE ;
 int AML_SDXC_IRQ_ENABLE_REG ;
 int AML_SDXC_IRQ_ENABLE_RESP_OK ;
 int AML_SDXC_IRQ_ENABLE_STANDARD ;
 int AML_SDXC_IRQ_ENABLE_TRANSFER_DONE_OK ;
 int AML_SDXC_LOCK_ASSERT (struct aml8726_sdxc_softc*) ;
 int AML_SDXC_MAX_TIMEOUT ;
 int AML_SDXC_READ_TIMEOUT ;
 int AML_SDXC_SEND_CMD_HAS_DATA ;
 int AML_SDXC_SEND_CMD_HAS_RESP ;
 int AML_SDXC_SEND_DATA_STOP ;
 int AML_SDXC_SEND_DATA_WRITE ;
 int AML_SDXC_SEND_REG ;
 int AML_SDXC_SEND_REP_PKG_CNT_SHIFT ;
 int AML_SDXC_SEND_RESP_136 ;
 int AML_SDXC_SEND_RESP_NO_CRC7_CHECK ;
 int AML_SDXC_WRITE_TIMEOUT ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int CSR_BARRIER (struct aml8726_sdxc_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_sdxc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_sdxc_softc*,int ,int) ;
 int MMC_DATA_MULTI ;
 int MMC_DATA_READ ;
 int MMC_DATA_WRITE ;
 int MMC_ERR_INVALID ;
 int MMC_ERR_NONE ;
 int MMC_ERR_NO_MEMORY ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;
 int MMC_SECTOR_SIZE ;
 int MMC_STOP_TRANSMISSION ;
 int aml8726_sdxc_engage_dma (struct aml8726_sdxc_softc*) ;
 int aml8726_sdxc_mapmem ;
 int aml8726_sdxc_soft_reset (struct aml8726_sdxc_softc*) ;
 int aml8726_sdxc_timeout ;
 int bus_dmamap_load (int ,int ,int ,int,int ,scalar_t__*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int callout_reset (int *,int ,int ,struct aml8726_sdxc_softc*) ;
 int msecs_to_ticks (int) ;

__attribute__((used)) static int
aml8726_sdxc_start_command(struct aml8726_sdxc_softc *sc,
    struct mmc_command *cmd)
{
 bus_addr_t baddr;
 uint32_t block_size;
 uint32_t ctlr;
 uint32_t ier;
 uint32_t sndr;
 uint32_t timeout;
 int error;
 struct mmc_data *data;

 AML_SDXC_LOCK_ASSERT(sc);

 if (cmd->opcode > 0x3f)
  return (MMC_ERR_INVALID);




 aml8726_sdxc_soft_reset(sc);

 sndr = cmd->opcode;

 if ((cmd->flags & MMC_RSP_136) != 0) {
  sndr |= AML_SDXC_SEND_CMD_HAS_RESP;
  sndr |= AML_SDXC_SEND_RESP_136;







  sndr |= AML_SDXC_SEND_RESP_NO_CRC7_CHECK;
 } else if ((cmd->flags & MMC_RSP_PRESENT) != 0)
  sndr |= AML_SDXC_SEND_CMD_HAS_RESP;

 if ((cmd->flags & MMC_RSP_CRC) == 0)
  sndr |= AML_SDXC_SEND_RESP_NO_CRC7_CHECK;

 if (cmd->opcode == MMC_STOP_TRANSMISSION)
  sndr |= AML_SDXC_SEND_DATA_STOP;

 data = cmd->data;

 baddr = 0;
 ctlr = CSR_READ_4(sc, AML_SDXC_CNTRL_REG);
 ier = AML_SDXC_IRQ_ENABLE_STANDARD;
 timeout = AML_SDXC_CMD_TIMEOUT;

 ctlr &= ~AML_SDXC_CNTRL_PKG_LEN_MASK;

 if (data && data->len &&
     (data->flags & (MMC_DATA_READ | MMC_DATA_WRITE)) != 0) {
  block_size = data->len;

  if ((data->flags & MMC_DATA_MULTI) != 0) {
   block_size = MMC_SECTOR_SIZE;
   if ((data->len % block_size) != 0)
    return (MMC_ERR_INVALID);
  }

  if (block_size > 512)
   return (MMC_ERR_INVALID);

  sndr |= AML_SDXC_SEND_CMD_HAS_DATA;
  sndr |= ((data->flags & MMC_DATA_WRITE) != 0) ?
      AML_SDXC_SEND_DATA_WRITE : 0;
  sndr |= (((data->len / block_size) - 1) <<
      AML_SDXC_SEND_REP_PKG_CNT_SHIFT);

  ctlr |= ((block_size < 512) ? block_size : 0) <<
      AML_SDXC_CNTRL_PKG_LEN_SHIFT;

  ier &= ~AML_SDXC_IRQ_ENABLE_RESP_OK;
  ier |= (sc->auto_fill_flush == 1 ||
      (data->flags & MMC_DATA_WRITE) != 0) ?
      AML_SDXC_IRQ_ENABLE_DMA_DONE :
      AML_SDXC_IRQ_ENABLE_TRANSFER_DONE_OK;

  error = bus_dmamap_load(sc->dmatag, sc->dmamap,
      data->data, data->len, aml8726_sdxc_mapmem, &baddr,
      BUS_DMA_NOWAIT);
  if (error)
   return (MMC_ERR_NO_MEMORY);

  if ((data->flags & MMC_DATA_READ) != 0) {
   bus_dmamap_sync(sc->dmatag, sc->dmamap,
       BUS_DMASYNC_PREREAD);
   timeout = AML_SDXC_READ_TIMEOUT *
       (data->len / block_size);
  } else {
   bus_dmamap_sync(sc->dmatag, sc->dmamap,
       BUS_DMASYNC_PREWRITE);
   timeout = AML_SDXC_WRITE_TIMEOUT *
       (data->len / block_size);
  }
 }

 sc->cmd = cmd;

 cmd->error = MMC_ERR_NONE;

 sc->busy.time = 0;
 sc->busy.error = MMC_ERR_NONE;

 if (timeout > AML_SDXC_MAX_TIMEOUT)
  timeout = AML_SDXC_MAX_TIMEOUT;

 callout_reset(&sc->ch, msecs_to_ticks(timeout),
     aml8726_sdxc_timeout, sc);

 CSR_WRITE_4(sc, AML_SDXC_IRQ_ENABLE_REG, ier);

 CSR_WRITE_4(sc, AML_SDXC_CNTRL_REG, ctlr);
 CSR_WRITE_4(sc, AML_SDXC_DMA_ADDR_REG, (uint32_t)baddr);
 CSR_WRITE_4(sc, AML_SDXC_CMD_ARGUMENT_REG, cmd->arg);

 aml8726_sdxc_engage_dma(sc);

 CSR_WRITE_4(sc, AML_SDXC_SEND_REG, sndr);
 CSR_BARRIER(sc, AML_SDXC_SEND_REG);

 return (MMC_ERR_NONE);
}
