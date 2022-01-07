
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_command {int opcode; int arg; int flags; TYPE_3__* data; int error; } ;
struct aw_mmc_softc {int aw_intr_wait; int aw_timeout; int aw_timeoutc; int aw_dev; scalar_t__ aw_resid; scalar_t__ aw_intr; struct mmc_request* aw_req; TYPE_2__* ccb; } ;
typedef int device_t ;
struct TYPE_6__ {int len; int flags; int block_size; } ;
struct TYPE_4__ {struct mmc_command cmd; } ;
struct TYPE_5__ {TYPE_1__ mmcio; } ;


 int AW_MMC_A12A ;
 int AW_MMC_BKSR ;
 int AW_MMC_BYCR ;
 int AW_MMC_CAGR ;
 int AW_MMC_CMDR ;
 int AW_MMC_CMDR_CHK_RESP_CRC ;
 int AW_MMC_CMDR_DATA_TRANS ;
 int AW_MMC_CMDR_DIR_WRITE ;
 int AW_MMC_CMDR_LOAD ;
 int AW_MMC_CMDR_LONG_RESP ;
 int AW_MMC_CMDR_RESP_RCV ;
 int AW_MMC_CMDR_SEND_INIT_SEQ ;
 int AW_MMC_CMDR_STOP_CMD_FLAG ;
 int AW_MMC_CMDR_WAIT_PRE_OVER ;
 int AW_MMC_IMKR ;
 int AW_MMC_INT_AUTO_STOP_DONE ;
 int AW_MMC_INT_CMD_DONE ;
 int AW_MMC_INT_DATA_OVER ;
 int AW_MMC_INT_ERR_BIT ;
 int AW_MMC_LOCK (struct aw_mmc_softc*) ;
 int AW_MMC_RISR ;
 int AW_MMC_UNLOCK (struct aw_mmc_softc*) ;
 int AW_MMC_WRITE_4 (struct aw_mmc_softc*,int ,int) ;
 int EBUSY ;
 int KASSERT (int ,char*) ;
 int MMC_DATA_BLOCK_SIZE ;
 int MMC_DATA_MULTI ;
 int MMC_DATA_WRITE ;
 int MMC_ERR_NONE ;
 int MMC_GO_IDLE_STATE ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_PRESENT ;
 int MMC_SECTOR_SIZE ;
 int aw_mmc_prepare_dma (struct aw_mmc_softc*) ;
 int aw_mmc_timeout ;
 scalar_t__ bootverbose ;
 int callout_reset (int *,int,int ,struct aw_mmc_softc*) ;
 struct aw_mmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,...) ;
 int hz ;
 int min (int,int ) ;

__attribute__((used)) static int
aw_mmc_request(device_t bus, device_t child, struct mmc_request *req)
{
 int blksz;
 struct aw_mmc_softc *sc;
 struct mmc_command *cmd;
 uint32_t cmdreg, imask;
 int err;

 sc = device_get_softc(bus);

 AW_MMC_LOCK(sc);
 if (sc->aw_req) {
  AW_MMC_UNLOCK(sc);
  return (EBUSY);
 }
 sc->aw_req = req;
 cmd = req->cmd;
 cmdreg = AW_MMC_CMDR_LOAD;
 imask = AW_MMC_INT_ERR_BIT;
 sc->aw_intr_wait = 0;
 sc->aw_intr = 0;
 sc->aw_resid = 0;
 cmd->error = MMC_ERR_NONE;

 if (cmd->opcode == MMC_GO_IDLE_STATE)
  cmdreg |= AW_MMC_CMDR_SEND_INIT_SEQ;

 if (cmd->flags & MMC_RSP_PRESENT)
  cmdreg |= AW_MMC_CMDR_RESP_RCV;
 if (cmd->flags & MMC_RSP_136)
  cmdreg |= AW_MMC_CMDR_LONG_RESP;
 if (cmd->flags & MMC_RSP_CRC)
  cmdreg |= AW_MMC_CMDR_CHK_RESP_CRC;

 if (cmd->data) {
  cmdreg |= AW_MMC_CMDR_DATA_TRANS | AW_MMC_CMDR_WAIT_PRE_OVER;

  if (cmd->data->flags & MMC_DATA_MULTI) {
   cmdreg |= AW_MMC_CMDR_STOP_CMD_FLAG;
   imask |= AW_MMC_INT_AUTO_STOP_DONE;
   sc->aw_intr_wait |= AW_MMC_INT_AUTO_STOP_DONE;
  } else {
   sc->aw_intr_wait |= AW_MMC_INT_DATA_OVER;
   imask |= AW_MMC_INT_DATA_OVER;
  }
  if (cmd->data->flags & MMC_DATA_WRITE)
   cmdreg |= AW_MMC_CMDR_DIR_WRITE;






  {
   blksz = min(cmd->data->len, MMC_SECTOR_SIZE);
   AW_MMC_WRITE_4(sc, AW_MMC_BKSR, blksz);
   AW_MMC_WRITE_4(sc, AW_MMC_BYCR, cmd->data->len);
  }
 } else {
  imask |= AW_MMC_INT_CMD_DONE;
 }


 AW_MMC_WRITE_4(sc, AW_MMC_IMKR, imask);
 AW_MMC_WRITE_4(sc, AW_MMC_RISR, 0xffffffff);


 AW_MMC_WRITE_4(sc, AW_MMC_A12A,
     cmdreg & AW_MMC_CMDR_STOP_CMD_FLAG ? 0 : 0xffff);


 AW_MMC_WRITE_4(sc, AW_MMC_CAGR, cmd->arg);





 if (cmd->data == ((void*)0)) {
  AW_MMC_WRITE_4(sc, AW_MMC_CMDR, cmdreg | cmd->opcode);
 } else {
  err = aw_mmc_prepare_dma(sc);
  if (err != 0)
   device_printf(sc->aw_dev, "prepare_dma failed: %d\n", err);

  AW_MMC_WRITE_4(sc, AW_MMC_CMDR, cmdreg | cmd->opcode);
 }

 callout_reset(&sc->aw_timeoutc, sc->aw_timeout * hz,
     aw_mmc_timeout, sc);
 AW_MMC_UNLOCK(sc);

 return (0);
}
