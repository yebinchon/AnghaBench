
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aac_softc {int aac_state; int aac_support_opt2; int doorbell_mask; int aac_max_msix; int msi_enabled; int flags; int aac_io_lock; int aac_dev; } ;
struct aac_pause_command {int Timeout; int Min; int NoRescan; int Type; int Command; } ;
struct aac_fib {int * data; } ;
struct aac_command {int (* cm_complete ) (struct aac_command*) ;int cm_flags; } ;


 int AAC_ACCESS_DEVREG (struct aac_softc*,int ) ;
 int AAC_CMD_RESET ;
 int AAC_DISABLE_INTERRUPT ;
 int AAC_ENABLE_INTERRUPT ;
 int AAC_ENABLE_MSIX ;
 int AAC_FLAGS_SYNC_MODE ;
 int AAC_IOP_RESET ;
 int AAC_IOP_RESET_ALWAYS ;
 int AAC_IRCSR ;
 int AAC_IRCSR_CORES_RST ;
 int AAC_MEM0_SETREG4 (struct aac_softc*,int ,int) ;
 int AAC_SRB_STS_INVALID_REQUEST ;
 int AAC_SRC_IDBR ;
 int AAC_STATE_RESET ;
 int AAC_SUPPORTED_DOORBELL_RESET ;
 int AAC_SUPPORTED_MU_RESET ;
 int CT_PAUSE_IO ;
 int ContainerCommand ;
 int DELAY (int) ;
 int EINVAL ;
 int FALSE ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int MA_OWNED ;
 int VM_ContainerConfig ;
 int aac_alloc_sync_fib (struct aac_softc*,struct aac_fib**) ;
 scalar_t__ aac_check_adapter_health (struct aac_softc*,int *) ;
 scalar_t__ aac_check_firmware (struct aac_softc*) ;
 struct aac_command* aac_dequeue_busy (struct aac_softc*) ;
 struct aac_command* aac_dequeue_ready (struct aac_softc*) ;
 int aac_init (struct aac_softc*) ;
 int aac_release_sync_fib (struct aac_softc*) ;
 int aac_sync_fib (struct aac_softc*,int ,int ,struct aac_fib*,int) ;
 int aacraid_shutdown (int ) ;
 int aacraid_startio (struct aac_softc*) ;
 int aacraid_sync_command (struct aac_softc*,int ,int ,int ,int ,int ,int*,int*) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct aac_command*) ;
 int stub2 (struct aac_command*) ;
 int wakeup (struct aac_command*) ;

__attribute__((used)) static int
aac_reset_adapter(struct aac_softc *sc)
{
 struct aac_command *cm;
 struct aac_fib *fib;
 struct aac_pause_command *pc;
 u_int32_t status, reset_mask, waitCount, max_msix_orig;
 int ret, msi_enabled_orig;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 mtx_assert(&sc->aac_io_lock, MA_OWNED);

 if (sc->aac_state & AAC_STATE_RESET) {
  device_printf(sc->aac_dev, "aac_reset_adapter() already in progress\n");
  return (EINVAL);
 }
 sc->aac_state |= AAC_STATE_RESET;


 AAC_ACCESS_DEVREG(sc, AAC_DISABLE_INTERRUPT);





 while ((cm = aac_dequeue_busy(sc)) != ((void*)0)) {
  cm->cm_flags |= AAC_CMD_RESET;


  if (cm->cm_complete != ((void*)0)) {
   cm->cm_complete(cm);
  } else {



   wakeup(cm);
  }
 }


 while ((cm = aac_dequeue_ready(sc)) != ((void*)0)) {
  cm->cm_flags |= AAC_CMD_RESET;


  if (cm->cm_complete != ((void*)0)) {
   cm->cm_complete(cm);
  } else {



   wakeup(cm);
  }
 }


 if (aac_check_adapter_health(sc, ((void*)0)) == 0) {
  mtx_unlock(&sc->aac_io_lock);
  (void) aacraid_shutdown(sc->aac_dev);
  mtx_lock(&sc->aac_io_lock);
 }


 if (sc->aac_support_opt2 & AAC_SUPPORTED_MU_RESET) {
  AAC_MEM0_SETREG4(sc, AAC_IRCSR, AAC_IRCSR_CORES_RST);




  waitCount = 5 * 10000;
  while (waitCount) {
   DELAY(100);
   waitCount--;
  }
 } else {
  ret = aacraid_sync_command(sc, AAC_IOP_RESET_ALWAYS,
   0, 0, 0, 0, &status, &reset_mask);
  if (ret && !sc->doorbell_mask) {

   if ((aacraid_sync_command(sc, AAC_IOP_RESET, 0,0,0,0,
       &status, ((void*)0))) != 0) {
    if (status == AAC_SRB_STS_INVALID_REQUEST) {
     device_printf(sc->aac_dev,
         "IOP_RESET not supported\n");
    } else {

     device_printf(sc->aac_dev,
         "IOP_RESET failed\n");
    }


    aac_alloc_sync_fib(sc, &fib);
    pc = (struct aac_pause_command *)&fib->data[0];
    pc->Command = VM_ContainerConfig;
    pc->Type = CT_PAUSE_IO;
    pc->Timeout = 1;
    pc->Min = 1;
    pc->NoRescan = 1;

    (void) aac_sync_fib(sc, ContainerCommand, 0,
        fib, sizeof (struct aac_pause_command));
    aac_release_sync_fib(sc);

    goto finish;
   }
  } else if (sc->doorbell_mask) {
   ret = 0;
   reset_mask = sc->doorbell_mask;
  }
  if (!ret &&
      (sc->aac_support_opt2 & AAC_SUPPORTED_DOORBELL_RESET)) {
   AAC_MEM0_SETREG4(sc, AAC_SRC_IDBR, reset_mask);





   waitCount = 5 * 10000;
   while (waitCount) {
    DELAY(100);
    waitCount--;
   }
  }
 }




 max_msix_orig = sc->aac_max_msix;
 msi_enabled_orig = sc->msi_enabled;
 sc->msi_enabled = FALSE;
 if (aac_check_firmware(sc) != 0)
  goto finish;
 if (!(sc->flags & AAC_FLAGS_SYNC_MODE)) {
  sc->aac_max_msix = max_msix_orig;
  if (msi_enabled_orig) {
   sc->msi_enabled = msi_enabled_orig;
   AAC_ACCESS_DEVREG(sc, AAC_ENABLE_MSIX);
  }
  mtx_unlock(&sc->aac_io_lock);
  aac_init(sc);
  mtx_lock(&sc->aac_io_lock);
 }

finish:
 sc->aac_state &= ~AAC_STATE_RESET;
 AAC_ACCESS_DEVREG(sc, AAC_ENABLE_INTERRUPT);
 aacraid_startio(sc);
 return (0);
}
