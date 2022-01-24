#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tpc_list {size_t curseg; int stage; int tbdio; int /*<<< orphan*/  allio; int /*<<< orphan*/  ctsio; scalar_t__* seg; scalar_t__ error; scalar_t__ abort; } ;
struct tpc_io {scalar_t__ lun; TYPE_3__* io; int /*<<< orphan*/  cscd; int /*<<< orphan*/  target; struct tpc_io* buf; struct tpc_list* list; int /*<<< orphan*/  run; } ;
struct scsi_per_res_out_parms {int dummy; } ;
struct scsi_ec_segment_register_key {int /*<<< orphan*/  sa_res_key; int /*<<< orphan*/  res_key; int /*<<< orphan*/  dst_cscd; } ;
typedef  int /*<<< orphan*/  csi ;
struct TYPE_8__ {int retries; TYPE_1__* ctl_private; } ;
struct TYPE_9__ {TYPE_2__ io_hdr; } ;
struct TYPE_7__ {struct tpc_io* ptr; } ;

/* Variables and functions */
 size_t CTL_PRIV_FRONTEND ; 
 int CTL_RETVAL_COMPLETE ; 
 int CTL_RETVAL_ERROR ; 
 int CTL_RETVAL_QUEUED ; 
 int /*<<< orphan*/  CTL_TAG_SIMPLE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SPRO_REGISTER ; 
 int /*<<< orphan*/  SSD_ELEM_COMMAND ; 
 int /*<<< orphan*/  SSD_ELEM_NONE ; 
 int /*<<< orphan*/  SSD_FORWARDED_SDS_EXDST ; 
 int /*<<< orphan*/  SSD_KEY_COPY_ABORTED ; 
 struct tpc_io* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tpc_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tpc_io*,int /*<<< orphan*/ ) ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct tpc_io*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tpc_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 void* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct tpc_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct tpc_list*) ; 
 TYPE_3__* FUNC16 () ; 
 int FUNC17 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static int
FUNC18(struct tpc_list *list)
{
	struct scsi_ec_segment_register_key *seg;
	struct tpc_io *tio;
	uint64_t dl;
	int datalen;
	uint16_t cscd;
	uint8_t csi[4];

	FUNC13(list->curseg, csi);
	if (list->stage == 1) {
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
			FUNC15(list);
			return (CTL_RETVAL_ERROR);
		} else
			return (CTL_RETVAL_COMPLETE);
	}

	FUNC1(&list->allio);
	seg = (struct scsi_ec_segment_register_key *)list->seg[list->curseg];
	cscd = FUNC11(seg->dst_cscd);
	dl = FUNC14(list, cscd, NULL, NULL, NULL);
	if (dl == UINT64_MAX) {
		FUNC6(list->ctsio, /*current_error*/ 1,
		    /*sense_key*/ SSD_KEY_COPY_ABORTED,
		    /*asc*/ 0x08, /*ascq*/ 0x04,
		    SSD_ELEM_COMMAND, sizeof(csi), csi,
		    SSD_ELEM_NONE);
		return (CTL_RETVAL_ERROR);
	}

//	printf("Register Key %ju\n", dl);

	list->tbdio = 1;
	tio = FUNC9(sizeof(*tio), M_CTL, M_WAITOK | M_ZERO);
	FUNC1(&tio->run);
	tio->list = list;
	FUNC2(&list->allio, tio, links);
	tio->io = FUNC16();
	datalen = sizeof(struct scsi_per_res_out_parms);
	tio->buf = FUNC9(datalen, M_CTL, M_WAITOK);
	FUNC5(tio->io,
	    tio->buf, datalen, SPRO_REGISTER, -1,
	    FUNC12(seg->res_key), FUNC12(seg->sa_res_key),
	    /*tag_type*/ CTL_TAG_SIMPLE, /*control*/ 0);
	tio->io->io_hdr.retries = 3;
	tio->target = SSD_FORWARDED_SDS_EXDST;
	tio->cscd = cscd;
	tio->lun = dl;
	tio->io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = tio;
	list->stage++;
	if (FUNC17(tio->io, tio->lun) != CTL_RETVAL_COMPLETE)
		FUNC10("tpcl_queue() error");
	return (CTL_RETVAL_QUEUED);
}