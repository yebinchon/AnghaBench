
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_command {int flags; void* error; TYPE_4__* data; void** resp; } ;
struct aw_mmc_softc {int aw_resid; TYPE_3__* aw_req; TYPE_2__* ccb; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_7__ {struct mmc_command* cmd; } ;
struct TYPE_5__ {struct mmc_command cmd; } ;
struct TYPE_6__ {TYPE_1__ mmcio; } ;


 void* AW_MMC_READ_4 (struct aw_mmc_softc*,int ) ;
 int AW_MMC_RESP0 ;
 int AW_MMC_RESP1 ;
 int AW_MMC_RESP2 ;
 int AW_MMC_RESP3 ;
 int AW_MMC_STAR ;
 int AW_MMC_STAR_CARD_BUSY ;
 int DELAY (int) ;
 void* MMC_ERR_FAILED ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 int aw_mmc_req_done (struct aw_mmc_softc*) ;

__attribute__((used)) static void
aw_mmc_req_ok(struct aw_mmc_softc *sc)
{
 int timeout;
 struct mmc_command *cmd;
 uint32_t status;

 timeout = 1000;
 while (--timeout > 0) {
  status = AW_MMC_READ_4(sc, AW_MMC_STAR);
  if ((status & AW_MMC_STAR_CARD_BUSY) == 0)
   break;
  DELAY(1000);
 }



 cmd = sc->aw_req->cmd;

 if (timeout == 0) {
  cmd->error = MMC_ERR_FAILED;
  aw_mmc_req_done(sc);
  return;
 }
 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {
   cmd->resp[0] = AW_MMC_READ_4(sc, AW_MMC_RESP3);
   cmd->resp[1] = AW_MMC_READ_4(sc, AW_MMC_RESP2);
   cmd->resp[2] = AW_MMC_READ_4(sc, AW_MMC_RESP1);
   cmd->resp[3] = AW_MMC_READ_4(sc, AW_MMC_RESP0);
  } else
   cmd->resp[0] = AW_MMC_READ_4(sc, AW_MMC_RESP0);
 }

 if (cmd->data != ((void*)0) && (sc->aw_resid << 2) < cmd->data->len)
  cmd->error = MMC_ERR_FAILED;
 aw_mmc_req_done(sc);
}
