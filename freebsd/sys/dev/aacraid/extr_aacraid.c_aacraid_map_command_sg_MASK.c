#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct aac_softc {int flags; int aac_sg_tablesize; int hint_flags; struct aac_command* aac_sync_cm; int /*<<< orphan*/  aac_buffer_dmat; int /*<<< orphan*/  aac_io_lock; } ;
struct aac_sge_ieee1212 {int length; scalar_t__ flags; int /*<<< orphan*/  addrLow; scalar_t__ addrHigh; } ;
struct aac_sg_tableraw {int SgCount; TYPE_1__* SgEntryRaw; } ;
struct aac_sg_table64 {int SgCount; TYPE_3__* SgEntry64; } ;
struct aac_sg_table {int SgCount; TYPE_2__* SgEntry; } ;
struct aac_sg_entryraw {int dummy; } ;
struct aac_sg_entry64 {int dummy; } ;
struct aac_sg_entry {int dummy; } ;
struct aac_raw_io2 {int sgeCnt; scalar_t__ sgeNominalSize; int /*<<< orphan*/  flags; scalar_t__ sgeFirstSize; } ;
struct TYPE_11__ {scalar_t__ ReceiverFibAddress; } ;
struct TYPE_12__ {scalar_t__ Command; int Size; int SenderFibAddress; int Handle; TYPE_4__ u; } ;
struct aac_fib {TYPE_5__ Header; int /*<<< orphan*/ * data; } ;
struct aac_command {int cm_index; scalar_t__ cm_passthr_dmat; int cm_flags; scalar_t__ cm_fibphys; int /*<<< orphan*/  cm_datamap; struct aac_fib* cm_fib; struct aac_sg_table* cm_sgtable; struct aac_softc* cm_sc; } ;
struct TYPE_13__ {scalar_t__ ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_6__ bus_dma_segment_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_10__ {scalar_t__ SgByteCount; int /*<<< orphan*/  SgAddress; } ;
struct TYPE_9__ {scalar_t__ SgByteCount; int /*<<< orphan*/  SgAddress; } ;
struct TYPE_8__ {scalar_t__ SgByteCount; scalar_t__ Flags; scalar_t__ Prev; scalar_t__ Next; int /*<<< orphan*/  SgAddress; } ;

/* Variables and functions */
 int AAC_CMD_DATAIN ; 
 int AAC_CMD_DATAOUT ; 
 int AAC_CMD_MAPPED ; 
 int AAC_CMD_WAIT ; 
 int AAC_FLAGS_SG_64BIT ; 
 int AAC_FLAGS_SYNC_MODE ; 
 int /*<<< orphan*/  AAC_MONKER_SYNCFIB ; 
 int AAC_QUEUE_FRZN ; 
 scalar_t__ FUNC0 (struct aac_softc*,struct aac_command*) ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FALSE ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  RIO2_SGL_CONFORMANT ; 
 scalar_t__ RawIo ; 
 scalar_t__ RawIo2 ; 
 int TRUE ; 
 int FUNC2 (struct aac_softc*,struct aac_raw_io2*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_softc*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_softc*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC9(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	struct aac_softc *sc;
	struct aac_command *cm;
	struct aac_fib *fib;
	int i;

	cm = (struct aac_command *)arg;
	sc = cm->cm_sc;
	fib = cm->cm_fib;
	FUNC7(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "nseg %d", nseg);
	FUNC8(&sc->aac_io_lock, MA_OWNED);

	if ((sc->flags & AAC_FLAGS_SYNC_MODE) && sc->aac_sync_cm)
		return;

	/* copy into the FIB */
	if (cm->cm_sgtable != NULL) {
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

			/* not conformable: evaluate required sg elements */
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
					nseg = FUNC2(sc, 
						raw, i, nseg, nseg_new);
			} else {
				raw->flags |= RIO2_SGL_CONFORMANT;
			}

			/* update the FIB size for the s/g count */
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
			/* update the FIB size for the s/g count */
			fib->Header.Size += nseg*sizeof(struct aac_sg_entryraw);
		} else if ((cm->cm_sc->flags & AAC_FLAGS_SG_64BIT) == 0) {
			struct aac_sg_table *sg;
			sg = cm->cm_sgtable;
			sg->SgCount = nseg;
			for (i = 0; i < nseg; i++) {
				sg->SgEntry[i].SgAddress = segs[i].ds_addr;
				sg->SgEntry[i].SgByteCount = segs[i].ds_len;
			}
			/* update the FIB size for the s/g count */
			fib->Header.Size += nseg*sizeof(struct aac_sg_entry);
		} else {
			struct aac_sg_table64 *sg;
			sg = (struct aac_sg_table64 *)cm->cm_sgtable;
			sg->SgCount = nseg;
			for (i = 0; i < nseg; i++) {
				sg->SgEntry64[i].SgAddress = segs[i].ds_addr;
				sg->SgEntry64[i].SgByteCount = segs[i].ds_len;
			}
			/* update the FIB size for the s/g count */
			fib->Header.Size += nseg*sizeof(struct aac_sg_entry64);
		}
	}

	/* Fix up the address values in the FIB.  Use the command array index
	 * instead of a pointer since these fields are only 32 bits.  Shift
	 * the SenderFibAddress over to make room for the fast response bit
	 * and for the AIF bit
	 */
	cm->cm_fib->Header.SenderFibAddress = (cm->cm_index << 2);
	cm->cm_fib->Header.u.ReceiverFibAddress = (u_int32_t)cm->cm_fibphys;

	/* save a pointer to the command for speedy reverse-lookup */
	cm->cm_fib->Header.Handle += cm->cm_index + 1;

	if (cm->cm_passthr_dmat == 0) {
		if (cm->cm_flags & AAC_CMD_DATAIN)
			FUNC6(sc->aac_buffer_dmat, cm->cm_datamap,
							BUS_DMASYNC_PREREAD);
		if (cm->cm_flags & AAC_CMD_DATAOUT)
			FUNC6(sc->aac_buffer_dmat, cm->cm_datamap,
							BUS_DMASYNC_PREWRITE);
	}

	cm->cm_flags |= AAC_CMD_MAPPED;

	if (cm->cm_flags & AAC_CMD_WAIT) {
		FUNC5(sc, AAC_MONKER_SYNCFIB,
			cm->cm_fibphys, 0, 0, 0, NULL, NULL);
	} else if (sc->flags & AAC_FLAGS_SYNC_MODE) {
		u_int32_t wait = 0;
		sc->aac_sync_cm = cm;
		FUNC5(sc, AAC_MONKER_SYNCFIB,
			cm->cm_fibphys, 0, 0, 0, &wait, NULL);
	} else {
		int count = 10000000L;
		while (FUNC0(sc, cm) != 0) {
			if (--count == 0) {
				FUNC4(cm);
				sc->flags |= AAC_QUEUE_FRZN;
				FUNC3(cm);
			}
			FUNC1(5);			/* wait 5 usec. */
		}
	}
}