
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct aac_softc {int flags; int aac_sg_tablesize; int hint_flags; struct aac_command* aac_sync_cm; int aac_buffer_dmat; int aac_io_lock; } ;
struct aac_sge_ieee1212 {int length; scalar_t__ flags; int addrLow; scalar_t__ addrHigh; } ;
struct aac_sg_tableraw {int SgCount; TYPE_1__* SgEntryRaw; } ;
struct aac_sg_table64 {int SgCount; TYPE_3__* SgEntry64; } ;
struct aac_sg_table {int SgCount; TYPE_2__* SgEntry; } ;
struct aac_sg_entryraw {int dummy; } ;
struct aac_sg_entry64 {int dummy; } ;
struct aac_sg_entry {int dummy; } ;
struct aac_raw_io2 {int sgeCnt; scalar_t__ sgeNominalSize; int flags; scalar_t__ sgeFirstSize; } ;
struct TYPE_11__ {scalar_t__ ReceiverFibAddress; } ;
struct TYPE_12__ {scalar_t__ Command; int Size; int SenderFibAddress; int Handle; TYPE_4__ u; } ;
struct aac_fib {TYPE_5__ Header; int * data; } ;
struct aac_command {int cm_index; scalar_t__ cm_passthr_dmat; int cm_flags; scalar_t__ cm_fibphys; int cm_datamap; struct aac_fib* cm_fib; struct aac_sg_table* cm_sgtable; struct aac_softc* cm_sc; } ;
struct TYPE_13__ {scalar_t__ ds_len; int ds_addr; } ;
typedef TYPE_6__ bus_dma_segment_t ;
typedef int bus_addr_t ;
struct TYPE_10__ {scalar_t__ SgByteCount; int SgAddress; } ;
struct TYPE_9__ {scalar_t__ SgByteCount; int SgAddress; } ;
struct TYPE_8__ {scalar_t__ SgByteCount; scalar_t__ Flags; scalar_t__ Prev; scalar_t__ Next; int SgAddress; } ;


 int AAC_CMD_DATAIN ;
 int AAC_CMD_DATAOUT ;
 int AAC_CMD_MAPPED ;
 int AAC_CMD_WAIT ;
 int AAC_FLAGS_SG_64BIT ;
 int AAC_FLAGS_SYNC_MODE ;
 int AAC_MONKER_SYNCFIB ;
 int AAC_QUEUE_FRZN ;
 scalar_t__ AAC_SEND_COMMAND (struct aac_softc*,struct aac_command*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int DELAY (int) ;
 int FALSE ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int MA_OWNED ;
 scalar_t__ PAGE_SIZE ;
 int RIO2_SGL_CONFORMANT ;
 scalar_t__ RawIo ;
 scalar_t__ RawIo2 ;
 int TRUE ;
 int aac_convert_sgraw2 (struct aac_softc*,struct aac_raw_io2*,int,int,int) ;
 int aac_requeue_ready (struct aac_command*) ;
 int aac_unmap_command (struct aac_command*) ;
 int aacraid_sync_command (struct aac_softc*,int ,scalar_t__,int ,int ,int ,scalar_t__*,int *) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int fwprintf (struct aac_softc*,char*,char*,int) ;
 int mtx_assert (int *,int ) ;

void
aacraid_map_command_sg(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct aac_softc *sc;
 struct aac_command *cm;
 struct aac_fib *fib;
 int i;

 cm = (struct aac_command *)arg;
 sc = cm->cm_sc;
 fib = cm->cm_fib;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "nseg %d", nseg);
 mtx_assert(&sc->aac_io_lock, MA_OWNED);

 if ((sc->flags & AAC_FLAGS_SYNC_MODE) && sc->aac_sync_cm)
  return;


 if (cm->cm_sgtable != ((void*)0)) {
  if (fib->Header.Command == RawIo2) {
   struct aac_raw_io2 *raw;
   struct aac_sge_ieee1212 *sg;
   u_int32_t min_size = PAGE_SIZE, cur_size;
   int conformable = TRUE;

   raw = (struct aac_raw_io2 *)&fib->data[0];
   sg = (struct aac_sge_ieee1212 *)cm->cm_sgtable;
   raw->sgeCnt = nseg;

   for (i = 0; i < nseg; i++) {
    cur_size = segs[i].ds_len;
    sg[i].addrHigh = 0;
    *(bus_addr_t *)&sg[i].addrLow = segs[i].ds_addr;
    sg[i].length = cur_size;
    sg[i].flags = 0;
    if (i == 0) {
     raw->sgeFirstSize = cur_size;
    } else if (i == 1) {
     raw->sgeNominalSize = cur_size;
     min_size = cur_size;
    } else if ((i+1) < nseg &&
     cur_size != raw->sgeNominalSize) {
     conformable = FALSE;
     if (cur_size < min_size)
      min_size = cur_size;
    }
   }


   if (!conformable) {
    int j, err_found, nseg_new = nseg;
    for (i = min_size / PAGE_SIZE; i >= 1; --i) {
     err_found = FALSE;
     nseg_new = 2;
     for (j = 1; j < nseg - 1; ++j) {
      if (sg[j].length % (i*PAGE_SIZE)) {
       err_found = TRUE;
       break;
      }
      nseg_new += (sg[j].length / (i*PAGE_SIZE));
     }
     if (!err_found)
      break;
    }
    if (i>0 && nseg_new<=sc->aac_sg_tablesize &&
     !(sc->hint_flags & 4))
     nseg = aac_convert_sgraw2(sc,
      raw, i, nseg, nseg_new);
   } else {
    raw->flags |= RIO2_SGL_CONFORMANT;
   }


   fib->Header.Size += nseg *
    sizeof(struct aac_sge_ieee1212);

  } else if (fib->Header.Command == RawIo) {
   struct aac_sg_tableraw *sg;
   sg = (struct aac_sg_tableraw *)cm->cm_sgtable;
   sg->SgCount = nseg;
   for (i = 0; i < nseg; i++) {
    sg->SgEntryRaw[i].SgAddress = segs[i].ds_addr;
    sg->SgEntryRaw[i].SgByteCount = segs[i].ds_len;
    sg->SgEntryRaw[i].Next = 0;
    sg->SgEntryRaw[i].Prev = 0;
    sg->SgEntryRaw[i].Flags = 0;
   }

   fib->Header.Size += nseg*sizeof(struct aac_sg_entryraw);
  } else if ((cm->cm_sc->flags & AAC_FLAGS_SG_64BIT) == 0) {
   struct aac_sg_table *sg;
   sg = cm->cm_sgtable;
   sg->SgCount = nseg;
   for (i = 0; i < nseg; i++) {
    sg->SgEntry[i].SgAddress = segs[i].ds_addr;
    sg->SgEntry[i].SgByteCount = segs[i].ds_len;
   }

   fib->Header.Size += nseg*sizeof(struct aac_sg_entry);
  } else {
   struct aac_sg_table64 *sg;
   sg = (struct aac_sg_table64 *)cm->cm_sgtable;
   sg->SgCount = nseg;
   for (i = 0; i < nseg; i++) {
    sg->SgEntry64[i].SgAddress = segs[i].ds_addr;
    sg->SgEntry64[i].SgByteCount = segs[i].ds_len;
   }

   fib->Header.Size += nseg*sizeof(struct aac_sg_entry64);
  }
 }






 cm->cm_fib->Header.SenderFibAddress = (cm->cm_index << 2);
 cm->cm_fib->Header.u.ReceiverFibAddress = (u_int32_t)cm->cm_fibphys;


 cm->cm_fib->Header.Handle += cm->cm_index + 1;

 if (cm->cm_passthr_dmat == 0) {
  if (cm->cm_flags & AAC_CMD_DATAIN)
   bus_dmamap_sync(sc->aac_buffer_dmat, cm->cm_datamap,
       BUS_DMASYNC_PREREAD);
  if (cm->cm_flags & AAC_CMD_DATAOUT)
   bus_dmamap_sync(sc->aac_buffer_dmat, cm->cm_datamap,
       BUS_DMASYNC_PREWRITE);
 }

 cm->cm_flags |= AAC_CMD_MAPPED;

 if (cm->cm_flags & AAC_CMD_WAIT) {
  aacraid_sync_command(sc, AAC_MONKER_SYNCFIB,
   cm->cm_fibphys, 0, 0, 0, ((void*)0), ((void*)0));
 } else if (sc->flags & AAC_FLAGS_SYNC_MODE) {
  u_int32_t wait = 0;
  sc->aac_sync_cm = cm;
  aacraid_sync_command(sc, AAC_MONKER_SYNCFIB,
   cm->cm_fibphys, 0, 0, 0, &wait, ((void*)0));
 } else {
  int count = 10000000L;
  while (AAC_SEND_COMMAND(sc, cm) != 0) {
   if (--count == 0) {
    aac_unmap_command(cm);
    sc->flags |= AAC_QUEUE_FRZN;
    aac_requeue_ready(cm);
   }
   DELAY(5);
  }
 }
}
