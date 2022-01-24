#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct runl {int dummy; } ;
struct tpc_list {scalar_t__ stage; scalar_t__ cursectors; scalar_t__ segsectors; int tbdio; int nrange; scalar_t__ segbytes; TYPE_4__* lun; TYPE_3__* range; struct runl allio; scalar_t__ curbytes; TYPE_9__* ctsio; int /*<<< orphan*/  fwd_sense_len; int /*<<< orphan*/  fwd_sense_data; scalar_t__ fwd_scsi_status; scalar_t__ error; scalar_t__ abort; } ;
struct tpc_io {int /*<<< orphan*/  lun; TYPE_7__* io; struct runl run; struct tpc_list* list; } ;
struct TYPE_13__ {int status; } ;
struct TYPE_20__ {int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_data; scalar_t__ scsi_status; TYPE_1__ io_hdr; } ;
struct TYPE_18__ {int retries; TYPE_5__* ctl_private; } ;
struct TYPE_19__ {TYPE_6__ io_hdr; } ;
struct TYPE_17__ {struct tpc_io* ptr; } ;
struct TYPE_16__ {int /*<<< orphan*/  lun; TYPE_2__* be_lun; } ;
struct TYPE_15__ {int /*<<< orphan*/  lba; int /*<<< orphan*/  length; } ;
struct TYPE_14__ {scalar_t__ blocksize; } ;

/* Variables and functions */
 int CTL_AUTOSENSE ; 
 size_t CTL_PRIV_FRONTEND ; 
 int CTL_RETVAL_COMPLETE ; 
 int CTL_RETVAL_ERROR ; 
 int CTL_RETVAL_QUEUED ; 
 int CTL_SCSI_ERROR ; 
 int /*<<< orphan*/  CTL_TAG_SIMPLE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SWS_NDOB ; 
 scalar_t__ FUNC0 (struct runl*) ; 
 struct tpc_io* FUNC1 (struct runl*) ; 
 int /*<<< orphan*/  FUNC2 (struct runl*) ; 
 int /*<<< orphan*/  FUNC3 (struct runl*,struct tpc_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct runl*,struct tpc_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (struct tpc_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 struct tpc_io* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  rlinks ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC14 () ; 
 int FUNC15 (TYPE_7__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct tpc_list *list)
{
	struct tpc_io *tio, *tiow;
	struct runl run, *prun;
	int r;
	uint32_t dstblock, len;

	if (list->stage > 0) {
complete:
		/* Cleanup after previous rounds. */
		while ((tio = FUNC1(&list->allio)) != NULL) {
			FUNC4(&list->allio, tio, links);
			FUNC5(tio->io);
			FUNC9(tio, M_CTL);
		}
		if (list->abort) {
			FUNC8(list->ctsio);
			return (CTL_RETVAL_ERROR);
		} else if (list->error) {
			if (list->fwd_scsi_status) {
				list->ctsio->io_hdr.status =
				    CTL_SCSI_ERROR | CTL_AUTOSENSE;
				list->ctsio->scsi_status = list->fwd_scsi_status;
				list->ctsio->sense_data = list->fwd_sense_data;
				list->ctsio->sense_len = list->fwd_sense_len;
			} else {
				FUNC7(list->ctsio,
				    /*sks_valid*/ 0, /*command*/ 0,
				    /*field*/ 0, /*bit_valid*/ 0, /*bit*/ 0);
			}
			return (CTL_RETVAL_ERROR);
		}
		list->cursectors += list->segsectors;
		list->curbytes += list->segbytes;
		return (CTL_RETVAL_COMPLETE);
	}

	dstblock = list->lun->be_lun->blocksize;
	FUNC2(&run);
	prun = &run;
	list->tbdio = 1;
	FUNC2(&list->allio);
	list->segsectors = 0;
	for (r = 0; r < list->nrange; r++) {
		len = FUNC12(list->range[r].length);
		if (len == 0)
			continue;

		tiow = FUNC10(sizeof(*tiow), M_CTL, M_WAITOK | M_ZERO);
		FUNC2(&tiow->run);
		tiow->list = list;
		FUNC3(&list->allio, tiow, links);
		tiow->io = FUNC14();
		FUNC6(tiow->io,
				    /*data_ptr*/ NULL,
				    /*data_len*/ 0,
				    /*byte2*/ SWS_NDOB,
				    /*lba*/ FUNC13(list->range[r].lba),
				    /*num_blocks*/ len,
				    /*tag_type*/ CTL_TAG_SIMPLE,
				    /*control*/ 0);
		tiow->io->io_hdr.retries = 3;
		tiow->lun = list->lun->lun;
		tiow->io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = tiow;

		FUNC3(prun, tiow, rlinks);
		prun = &tiow->run;
		list->segsectors += len;
	}
	list->segbytes = list->segsectors * dstblock;

	if (FUNC0(&run))
		goto complete;

	while ((tiow = FUNC1(&run)) != NULL) {
		FUNC4(&run, tiow, rlinks);
		if (FUNC15(tiow->io, tiow->lun) != CTL_RETVAL_COMPLETE)
			FUNC11("tpcl_queue() error");
	}

	list->stage++;
	return (CTL_RETVAL_QUEUED);
}