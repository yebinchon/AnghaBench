#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct runl {int dummy; } ;
struct tpc_list {scalar_t__ stage; int cursectors; int segsectors; int curbytes; int segbytes; int offset_into_rod; scalar_t__ tbdio; TYPE_6__* lun; struct runl allio; TYPE_1__* token; TYPE_9__* ctsio; TYPE_8__* range; int /*<<< orphan*/  nrange; int /*<<< orphan*/  fwd_sense_len; int /*<<< orphan*/  fwd_sense_data; scalar_t__ fwd_scsi_status; scalar_t__ error; scalar_t__ abort; } ;
struct tpc_io {int /*<<< orphan*/  lun; TYPE_7__* io; struct runl run; struct tpc_io* buf; struct tpc_list* list; } ;
typedef  int off_t ;
struct TYPE_16__ {int status; } ;
struct TYPE_21__ {int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_data; scalar_t__ scsi_status; TYPE_4__ io_hdr; } ;
struct TYPE_20__ {int /*<<< orphan*/  length; int /*<<< orphan*/  lba; } ;
struct TYPE_15__ {int retries; TYPE_2__* ctl_private; } ;
struct TYPE_19__ {TYPE_3__ io_hdr; } ;
struct TYPE_18__ {int /*<<< orphan*/  lun; TYPE_5__* be_lun; } ;
struct TYPE_17__ {int blocksize; int pblockexp; int pblockoff; } ;
struct TYPE_14__ {struct tpc_io* ptr; } ;
struct TYPE_13__ {int blocksize; int /*<<< orphan*/  lun; TYPE_8__* range; int /*<<< orphan*/  nrange; } ;

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
 struct tpc_io* FUNC0 (struct runl*) ; 
 int /*<<< orphan*/  FUNC1 (struct runl*) ; 
 int /*<<< orphan*/  FUNC2 (struct runl*,struct tpc_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct runl*,struct tpc_io*,int /*<<< orphan*/ ) ; 
 int TPC_MAX_IOCHUNK_SIZE ; 
 int TPC_MAX_IO_SIZE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,struct tpc_io*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (struct tpc_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 void* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  rlinks ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_8__*,int /*<<< orphan*/ ,int,int*,int*) ; 
 void* FUNC15 () ; 
 int FUNC16 (TYPE_7__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct tpc_list *list)
{
	struct tpc_io *tio, *tior, *tiow;
	struct runl run;
	int drange, srange;
	off_t doffset, soffset;
	off_t srclba, dstlba, numbytes, donebytes, roundbytes;
	uint32_t srcblock, dstblock, pb, pbo, adj;

	if (list->stage > 0) {
		/* Cleanup after previous rounds. */
		while ((tio = FUNC0(&list->allio)) != NULL) {
			FUNC3(&list->allio, tio, links);
			FUNC4(tio->io);
			FUNC8(tio->buf, M_CTL);
			FUNC8(tio, M_CTL);
		}
		if (list->abort) {
			FUNC7(list->ctsio);
			return (CTL_RETVAL_ERROR);
		} else if (list->error) {
			if (list->fwd_scsi_status) {
				list->ctsio->io_hdr.status =
				    CTL_SCSI_ERROR | CTL_AUTOSENSE;
				list->ctsio->scsi_status = list->fwd_scsi_status;
				list->ctsio->sense_data = list->fwd_sense_data;
				list->ctsio->sense_len = list->fwd_sense_len;
			} else {
				FUNC6(list->ctsio,
				    /*sks_valid*/ 0, /*command*/ 0,
				    /*field*/ 0, /*bit_valid*/ 0, /*bit*/ 0);
			}
			return (CTL_RETVAL_ERROR);
		}
		list->cursectors += list->segsectors;
		list->curbytes += list->segbytes;
	}

	/* Check where we are on destination ranges list. */
	if (FUNC14(list->range, list->nrange, list->cursectors,
	    &drange, &doffset) != 0)
		return (CTL_RETVAL_COMPLETE);
	dstblock = list->lun->be_lun->blocksize;
	pb = dstblock << list->lun->be_lun->pblockexp;
	if (list->lun->be_lun->pblockoff > 0)
		pbo = pb - dstblock * list->lun->be_lun->pblockoff;
	else
		pbo = 0;

	/* Check where we are on source ranges list. */
	srcblock = list->token->blocksize;
	if (FUNC14(list->token->range, list->token->nrange,
	    list->offset_into_rod + list->cursectors * dstblock / srcblock,
	    &srange, &soffset) != 0) {
		FUNC6(list->ctsio, /*sks_valid*/ 0,
		    /*command*/ 0, /*field*/ 0, /*bit_valid*/ 0, /*bit*/ 0);
		return (CTL_RETVAL_ERROR);
	}

	srclba = FUNC13(list->token->range[srange].lba) + soffset;
	dstlba = FUNC13(list->range[drange].lba) + doffset;
	numbytes = srcblock *
	    (FUNC12(list->token->range[srange].length) - soffset);
	numbytes = FUNC10(numbytes, dstblock *
	    (FUNC12(list->range[drange].length) - doffset));
	if (numbytes > TPC_MAX_IOCHUNK_SIZE) {
		numbytes = TPC_MAX_IOCHUNK_SIZE;
		numbytes -= numbytes % dstblock;
		if (pb > dstblock) {
			adj = (dstlba * dstblock + numbytes - pbo) % pb;
			if (numbytes > adj)
				numbytes -= adj;
		}
	}

	if (numbytes % srcblock != 0 || numbytes % dstblock != 0) {
		FUNC6(list->ctsio, /*sks_valid*/ 0,
		    /*command*/ 0, /*field*/ 0, /*bit_valid*/ 0, /*bit*/ 0);
		return (CTL_RETVAL_ERROR);
	}

	list->segbytes = numbytes;
	list->segsectors = numbytes / dstblock;
//printf("Copy chunk of %ju sectors from %ju to %ju\n", list->segsectors,
//    srclba, dstlba);
	donebytes = 0;
	FUNC1(&run);
	list->tbdio = 0;
	FUNC1(&list->allio);
	while (donebytes < numbytes) {
		roundbytes = numbytes - donebytes;
		if (roundbytes > TPC_MAX_IO_SIZE) {
			roundbytes = TPC_MAX_IO_SIZE;
			roundbytes -= roundbytes % dstblock;
			if (pb > dstblock) {
				adj = (dstlba * dstblock + roundbytes - pbo) % pb;
				if (roundbytes > adj)
					roundbytes -= adj;
			}
		}

		tior = FUNC9(sizeof(*tior), M_CTL, M_WAITOK | M_ZERO);
		FUNC1(&tior->run);
		tior->buf = FUNC9(roundbytes, M_CTL, M_WAITOK);
		tior->list = list;
		FUNC2(&list->allio, tior, links);
		tior->io = FUNC15();
		FUNC5(tior->io,
				    /*data_ptr*/ tior->buf,
				    /*data_len*/ roundbytes,
				    /*read_op*/ 1,
				    /*byte2*/ 0,
				    /*minimum_cdb_size*/ 0,
				    /*lba*/ srclba,
				    /*num_blocks*/ roundbytes / srcblock,
				    /*tag_type*/ CTL_TAG_SIMPLE,
				    /*control*/ 0);
		tior->io->io_hdr.retries = 3;
		tior->lun = list->token->lun;
		tior->io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = tior;

		tiow = FUNC9(sizeof(*tiow), M_CTL, M_WAITOK | M_ZERO);
		FUNC1(&tiow->run);
		tiow->list = list;
		FUNC2(&list->allio, tiow, links);
		tiow->io = FUNC15();
		FUNC5(tiow->io,
				    /*data_ptr*/ tior->buf,
				    /*data_len*/ roundbytes,
				    /*read_op*/ 0,
				    /*byte2*/ 0,
				    /*minimum_cdb_size*/ 0,
				    /*lba*/ dstlba,
				    /*num_blocks*/ roundbytes / dstblock,
				    /*tag_type*/ CTL_TAG_SIMPLE,
				    /*control*/ 0);
		tiow->io->io_hdr.retries = 3;
		tiow->lun = list->lun->lun;
		tiow->io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = tiow;

		FUNC2(&tior->run, tiow, rlinks);
		FUNC2(&run, tior, rlinks);
		list->tbdio++;
		donebytes += roundbytes;
		srclba += roundbytes / srcblock;
		dstlba += roundbytes / dstblock;
	}

	while ((tior = FUNC0(&run)) != NULL) {
		FUNC3(&run, tior, rlinks);
		if (FUNC16(tior->io, tior->lun) != CTL_RETVAL_COMPLETE)
			FUNC11("tpcl_queue() error");
	}

	list->stage++;
	return (CTL_RETVAL_QUEUED);
}