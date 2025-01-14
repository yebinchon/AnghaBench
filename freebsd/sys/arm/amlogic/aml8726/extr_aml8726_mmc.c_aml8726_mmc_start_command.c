
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_ios {scalar_t__ bus_width; } ;
struct mmc_data {int len; int flags; int data; } ;
struct mmc_command {int opcode; int flags; int error; int arg; TYPE_2__* mrq; struct mmc_data* data; } ;
struct TYPE_3__ {struct mmc_ios ios; } ;
struct aml8726_mmc_softc {int port; int stop_timeout; int ch; struct mmc_command* cmd; int dmamap; int dmatag; TYPE_1__ host; } ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_4__ {struct mmc_command* stop; } ;


 int AML_MMC_CMD_ARGUMENT_REG ;
 int AML_MMC_CMD_CHECK_DAT0_BUSY ;
 int AML_MMC_CMD_CMD_HAS_DATA ;
 int AML_MMC_CMD_REP_PKG_CNT_SHIFT ;
 int AML_MMC_CMD_RESP_BITS_SHIFT ;
 int AML_MMC_CMD_RESP_CRC7_FROM_8 ;
 int AML_MMC_CMD_RESP_HAS_DATA ;
 int AML_MMC_CMD_RESP_NO_CRC7 ;
 int AML_MMC_CMD_SEND_REG ;
 int AML_MMC_CMD_START_BIT ;
 int AML_MMC_CMD_TIMEOUT ;
 int AML_MMC_CMD_TRANS_BIT_HOST ;
 int AML_MMC_DMA_ADDR_REG ;
 int AML_MMC_EXTENSION_PKT_SIZE_SHIFT ;
 int AML_MMC_EXTENSION_REG ;
 int AML_MMC_MAX_TIMEOUT ;
 int AML_MMC_MULT_CONFIG_REG ;
 int AML_MMC_MULT_CONFIG_STREAM_EN ;
 int AML_MMC_READ_TIMEOUT ;
 int AML_MMC_WRITE_TIMEOUT ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int CSR_BARRIER (struct aml8726_mmc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_mmc_softc*,int ,int) ;
 int MMC_DATA_MULTI ;
 int MMC_DATA_READ ;
 int MMC_DATA_STREAM ;
 int MMC_DATA_WRITE ;
 int MMC_ERR_INVALID ;
 int MMC_ERR_NONE ;
 int MMC_ERR_NO_MEMORY ;
 int MMC_RSP_136 ;
 int MMC_RSP_BUSY ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;
 int MMC_SECTOR_SIZE ;
 int MSECS_TO_TICKS (int) ;
 int aml8726_mmc_mapmem ;
 int aml8726_mmc_soft_reset (struct aml8726_mmc_softc*,int) ;
 int aml8726_mmc_timeout ;
 int bus_dmamap_load (int ,int ,int ,int,int ,scalar_t__*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 scalar_t__ bus_width_4 ;
 int callout_reset (int *,int ,int ,struct aml8726_mmc_softc*) ;

__attribute__((used)) static int
aml8726_mmc_start_command(struct aml8726_mmc_softc *sc, struct mmc_command *cmd)
{
 struct mmc_ios *ios = &sc->host.ios;
 bus_addr_t baddr;
 uint32_t block_size;
 uint32_t bus_width;
 uint32_t cmdr;
 uint32_t extr;
 uint32_t mcfgr;
 uint32_t nbits_per_pkg;
 uint32_t timeout;
 int error;
 struct mmc_data *data;

 if (cmd->opcode > 0x3f)
  return (MMC_ERR_INVALID);




 aml8726_mmc_soft_reset(sc, 1);
 cmdr = AML_MMC_CMD_START_BIT | AML_MMC_CMD_TRANS_BIT_HOST | cmd->opcode;
 baddr = 0;
 extr = 0;
 mcfgr = sc->port;
 timeout = AML_MMC_CMD_TIMEOUT;




 if (cmd == cmd->mrq->stop && sc->stop_timeout)
  timeout = sc->stop_timeout;
 sc->stop_timeout = 0;

 if ((cmd->flags & MMC_RSP_136) != 0) {
  cmdr |= AML_MMC_CMD_RESP_CRC7_FROM_8;
  cmdr |= (133 << AML_MMC_CMD_RESP_BITS_SHIFT);
 } else if ((cmd->flags & MMC_RSP_PRESENT) != 0)
  cmdr |= (45 << AML_MMC_CMD_RESP_BITS_SHIFT);

 if ((cmd->flags & MMC_RSP_CRC) == 0)
  cmdr |= AML_MMC_CMD_RESP_NO_CRC7;

 if ((cmd->flags & MMC_RSP_BUSY) != 0)
  cmdr |= AML_MMC_CMD_CHECK_DAT0_BUSY;

 data = cmd->data;

 if (data && data->len &&
     (data->flags & (MMC_DATA_READ | MMC_DATA_WRITE)) != 0) {
  block_size = data->len;

  if ((data->flags & MMC_DATA_MULTI) != 0) {
   block_size = MMC_SECTOR_SIZE;
   if ((data->len % block_size) != 0)
    return (MMC_ERR_INVALID);
  }

  cmdr |= (((data->len / block_size) - 1) <<
      AML_MMC_CMD_REP_PKG_CNT_SHIFT);

  mcfgr |= (data->flags & MMC_DATA_STREAM) ?
      AML_MMC_MULT_CONFIG_STREAM_EN : 0;
  bus_width = (ios->bus_width == bus_width_4) ? 4 : 1;
  nbits_per_pkg = block_size * 8 + 16 * bus_width - bus_width;
  if (nbits_per_pkg > 0x3fff)
   return (MMC_ERR_INVALID);

  extr |= (nbits_per_pkg << AML_MMC_EXTENSION_PKT_SIZE_SHIFT);

  error = bus_dmamap_load(sc->dmatag, sc->dmamap,
      data->data, data->len, aml8726_mmc_mapmem, &baddr,
      BUS_DMA_NOWAIT);
  if (error)
   return (MMC_ERR_NO_MEMORY);

  if ((data->flags & MMC_DATA_READ) != 0) {
   cmdr |= AML_MMC_CMD_RESP_HAS_DATA;
   bus_dmamap_sync(sc->dmatag, sc->dmamap,
       BUS_DMASYNC_PREREAD);
   timeout = AML_MMC_READ_TIMEOUT *
       (data->len / block_size);
  } else {
   cmdr |= AML_MMC_CMD_CMD_HAS_DATA;
   bus_dmamap_sync(sc->dmatag, sc->dmamap,
       BUS_DMASYNC_PREWRITE);
   timeout = AML_MMC_WRITE_TIMEOUT *
       (data->len / block_size);
  }





  if (cmd->mrq->stop != ((void*)0))
   sc->stop_timeout = timeout;
 }

 sc->cmd = cmd;

 cmd->error = MMC_ERR_NONE;

 if (timeout > AML_MMC_MAX_TIMEOUT)
  timeout = AML_MMC_MAX_TIMEOUT;

 callout_reset(&sc->ch, MSECS_TO_TICKS(timeout),
     aml8726_mmc_timeout, sc);

 CSR_WRITE_4(sc, AML_MMC_CMD_ARGUMENT_REG, cmd->arg);
 CSR_WRITE_4(sc, AML_MMC_MULT_CONFIG_REG, mcfgr);
 CSR_WRITE_4(sc, AML_MMC_EXTENSION_REG, extr);
 CSR_WRITE_4(sc, AML_MMC_DMA_ADDR_REG, (uint32_t)baddr);

 CSR_WRITE_4(sc, AML_MMC_CMD_SEND_REG, cmdr);
 CSR_BARRIER(sc, AML_MMC_CMD_SEND_REG);

 return (MMC_ERR_NONE);
}
