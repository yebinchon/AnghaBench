
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct aac_softc {int flags; int* aac_host_rrq_idx; int aac_vector_cap; int aac_io_lock; scalar_t__ aif_pending; TYPE_2__* aac_common; int * aac_rrq_outstanding; struct aac_command* aac_commands; struct aac_command* aac_sync_cm; scalar_t__ msi_enabled; } ;
struct aac_msix_ctx {int vector_no; struct aac_softc* sc; } ;
struct TYPE_3__ {int XferState; } ;
struct aac_fib {scalar_t__ data; TYPE_1__ Header; } ;
struct aac_command {int (* cm_complete ) (struct aac_command*) ;int cm_flags; struct aac_fib* cm_fib; } ;
struct TYPE_4__ {int* ac_host_rrq; } ;


 int AAC_ACCESS_DEVREG (struct aac_softc*,int ) ;
 int AAC_CLEAR_AIF_BIT ;
 int AAC_CMD_COMPLETED ;
 int AAC_CMD_FASTRESP ;
 int AAC_DB_AIF_PENDING ;
 int AAC_DB_RESPONSE_SENT_NS ;
 int AAC_DB_SYNC_COMMAND ;
 int AAC_FIBSTATE_DONEADAP ;
 int AAC_FIBSTATE_NOMOREAIF ;
 int AAC_INT_MODE_AIF ;
 int AAC_INT_MODE_INTX ;
 int AAC_INT_MODE_MSI ;
 int AAC_INT_MODE_SYNC ;
 int AAC_MEM0_GETREG4 (struct aac_softc*,int ) ;
 int AAC_MEM0_SETREG4 (struct aac_softc*,int ,int) ;
 int AAC_QUEUE_FRZN ;
 int AAC_SRC_ODBR_C ;
 int AAC_SRC_ODBR_MSI ;
 int AAC_SRC_ODBR_R ;
 int AAC_SRC_ODR_SHIFT ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int ST_OK ;
 int TRUE ;
 int aac_handle_aif (struct aac_softc*,struct aac_fib*) ;
 int aac_remove_busy (struct aac_command*) ;
 int aac_request_aif (struct aac_softc*) ;
 int aac_unmap_command (struct aac_command*) ;
 int aacraid_release_command (struct aac_command*) ;
 int aacraid_startio (struct aac_softc*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct aac_command*) ;
 int stub2 (struct aac_command*) ;
 int wakeup (struct aac_command*) ;

void
aacraid_new_intr_type1(void *arg)
{
 struct aac_msix_ctx *ctx;
 struct aac_softc *sc;
 int vector_no;
 struct aac_command *cm;
 struct aac_fib *fib;
 u_int32_t bellbits, bellbits_shifted, index, handle;
 int isFastResponse, isAif, noMoreAif, mode;

 ctx = (struct aac_msix_ctx *)arg;
 sc = ctx->sc;
 vector_no = ctx->vector_no;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 mtx_lock(&sc->aac_io_lock);

 if (sc->msi_enabled) {
  mode = AAC_INT_MODE_MSI;
  if (vector_no == 0) {
   bellbits = AAC_MEM0_GETREG4(sc, AAC_SRC_ODBR_MSI);
   if (bellbits & 0x40000)
    mode |= AAC_INT_MODE_AIF;
   else if (bellbits & 0x1000)
    mode |= AAC_INT_MODE_SYNC;
  }
 } else {
  mode = AAC_INT_MODE_INTX;
  bellbits = AAC_MEM0_GETREG4(sc, AAC_SRC_ODBR_R);
  if (bellbits & AAC_DB_RESPONSE_SENT_NS) {
   bellbits = AAC_DB_RESPONSE_SENT_NS;
   AAC_MEM0_SETREG4(sc, AAC_SRC_ODBR_C, bellbits);
  } else {
   bellbits_shifted = (bellbits >> AAC_SRC_ODR_SHIFT);
   AAC_MEM0_SETREG4(sc, AAC_SRC_ODBR_C, bellbits);
   if (bellbits_shifted & AAC_DB_AIF_PENDING)
    mode |= AAC_INT_MODE_AIF;
   else if (bellbits_shifted & AAC_DB_SYNC_COMMAND)
    mode |= AAC_INT_MODE_SYNC;
  }

  AAC_MEM0_GETREG4(sc, AAC_SRC_ODBR_R);
 }

 if (mode & AAC_INT_MODE_SYNC) {
  if (sc->aac_sync_cm) {
   cm = sc->aac_sync_cm;
   cm->cm_flags |= AAC_CMD_COMPLETED;

   if (cm->cm_complete != ((void*)0)) {
    cm->cm_complete(cm);
   } else {

    wakeup(cm);
   }
   sc->flags &= ~AAC_QUEUE_FRZN;
   sc->aac_sync_cm = ((void*)0);
  }
  mode = 0;
 }

 if (mode & AAC_INT_MODE_AIF) {
  if (mode & AAC_INT_MODE_INTX) {
   aac_request_aif(sc);
   mode = 0;
  }
 }

 if (mode) {

  index = sc->aac_host_rrq_idx[vector_no];
  for (;;) {
   isFastResponse = isAif = noMoreAif = 0;

   handle = (sc->aac_common->ac_host_rrq[index] & 0x7fffffff);

   if (handle & 0x40000000)
    isFastResponse = 1;

   else if (handle & 0x00800000)
    isAif = TRUE;
   handle &= 0x0000ffff;
   if (handle == 0)
    break;

   cm = sc->aac_commands + (handle - 1);
   fib = cm->cm_fib;
   sc->aac_rrq_outstanding[vector_no]--;
   if (isAif) {
    noMoreAif = (fib->Header.XferState & AAC_FIBSTATE_NOMOREAIF) ? 1:0;
    if (!noMoreAif)
     aac_handle_aif(sc, fib);
    aac_remove_busy(cm);
    aacraid_release_command(cm);
   } else {
    if (isFastResponse) {
     fib->Header.XferState |= AAC_FIBSTATE_DONEADAP;
     *((u_int32_t *)(fib->data)) = ST_OK;
     cm->cm_flags |= AAC_CMD_FASTRESP;
    }
    aac_remove_busy(cm);
    aac_unmap_command(cm);
    cm->cm_flags |= AAC_CMD_COMPLETED;


    if (cm->cm_complete != ((void*)0)) {
     cm->cm_complete(cm);
    } else {

     wakeup(cm);
    }
    sc->flags &= ~AAC_QUEUE_FRZN;
   }

   sc->aac_common->ac_host_rrq[index++] = 0;
   if (index == (vector_no + 1) * sc->aac_vector_cap)
    index = vector_no * sc->aac_vector_cap;
   sc->aac_host_rrq_idx[vector_no] = index;

   if ((isAif && !noMoreAif) || sc->aif_pending)
    aac_request_aif(sc);
  }
 }

 if (mode & AAC_INT_MODE_AIF) {
  aac_request_aif(sc);
  AAC_ACCESS_DEVREG(sc, AAC_CLEAR_AIF_BIT);
  mode = 0;
 }


 if ((sc->flags & AAC_QUEUE_FRZN) == 0)
  aacraid_startio(sc);
 mtx_unlock(&sc->aac_io_lock);
}
