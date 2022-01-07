
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {int flags; scalar_t__ len; } ;
struct mmc_command {int error; TYPE_1__* mrq; struct mmc_data* data; } ;
struct aml8726_mmc_softc {int dmamap; int dmatag; struct mmc_command* cmd; int ch; } ;
struct TYPE_2__ {int (* done ) (TYPE_1__*) ;struct mmc_command* stop; } ;


 int AML_MMC_IRQ_STATUS_CLEAR_IRQ ;
 int AML_MMC_IRQ_STATUS_REG ;
 int AML_MMC_LOCK_ASSERT (struct aml8726_mmc_softc*) ;
 int AML_MMC_UNLOCK (struct aml8726_mmc_softc*) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_BARRIER (struct aml8726_mmc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_mmc_softc*,int ,int ) ;
 int MMC_DATA_READ ;
 int MMC_DATA_WRITE ;
 int MMC_ERR_NONE ;
 int aml8726_mmc_start_command (struct aml8726_mmc_softc*,struct mmc_command*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
aml8726_mmc_finish_command(struct aml8726_mmc_softc *sc, int mmc_error)
{
 int mmc_stop_error;
 struct mmc_command *cmd;
 struct mmc_command *stop_cmd;
 struct mmc_data *data;

 AML_MMC_LOCK_ASSERT(sc);


 CSR_WRITE_4(sc, AML_MMC_IRQ_STATUS_REG, AML_MMC_IRQ_STATUS_CLEAR_IRQ);
 CSR_BARRIER(sc, AML_MMC_IRQ_STATUS_REG);


 callout_stop(&sc->ch);

 cmd = sc->cmd;
 sc->cmd = ((void*)0);

 cmd->error = mmc_error;

 data = cmd->data;

 if (data && data->len &&
     (data->flags & (MMC_DATA_READ | MMC_DATA_WRITE)) != 0) {
  if ((data->flags & MMC_DATA_READ) != 0)
   bus_dmamap_sync(sc->dmatag, sc->dmamap,
       BUS_DMASYNC_POSTREAD);
  else
   bus_dmamap_sync(sc->dmatag, sc->dmamap,
       BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->dmatag, sc->dmamap);
 }







 stop_cmd = (cmd->mrq->stop != cmd) ? cmd->mrq->stop : ((void*)0);

 if (stop_cmd != ((void*)0)) {
  mmc_stop_error = aml8726_mmc_start_command(sc, stop_cmd);
  if (mmc_stop_error == MMC_ERR_NONE) {
   AML_MMC_UNLOCK(sc);
   return;
  }
  stop_cmd->error = mmc_stop_error;
 }

 AML_MMC_UNLOCK(sc);


 if (cmd->mrq)
  cmd->mrq->done(cmd->mrq);
}
