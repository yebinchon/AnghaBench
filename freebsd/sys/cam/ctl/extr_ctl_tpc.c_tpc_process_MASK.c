#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  int /*<<< orphan*/  uint8_t ;
struct tpc_list {scalar_t__ service_action; int error; size_t curseg; size_t nseg; int flags; int completed; int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_data; void* last_active; TYPE_1__* token; struct tpc_list* params; scalar_t__ stage; struct scsi_ec_segment** seg; struct ctl_scsiio* ctsio; struct ctl_lun* lun; } ;
struct scsi_ec_segment {int type_code; } ;
struct ctl_softc {int /*<<< orphan*/  tpc_lock; } ;
struct ctl_scsiio {int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_data; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; int /*<<< orphan*/  tpc_lists; struct ctl_softc* ctl_softc; } ;
typedef  int /*<<< orphan*/  csi ;
struct TYPE_2__ {scalar_t__ active; void* last_active; } ;

/* Variables and functions */
 int CTL_RETVAL_COMPLETE ; 
 int CTL_RETVAL_ERROR ; 
 int CTL_RETVAL_QUEUED ; 
 int EC_LIST_ID_USAGE_MASK ; 
 int EC_LIST_ID_USAGE_NONE ; 
#define  EC_SEG_B2B 130 
#define  EC_SEG_REGISTER_KEY 129 
#define  EC_SEG_VERIFY 128 
 scalar_t__ EC_WUT ; 
 int /*<<< orphan*/  M_CTL ; 
 int /*<<< orphan*/  SSD_ELEM_COMMAND ; 
 int /*<<< orphan*/  SSD_ELEM_NONE ; 
 int /*<<< orphan*/  SSD_KEY_COPY_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tpc_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_scsiio*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC4 (struct tpc_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ *) ; 
 void* time_uptime ; 
 int FUNC8 (struct tpc_list*) ; 
 int FUNC9 (struct tpc_list*) ; 
 int FUNC10 (struct tpc_list*) ; 
 int FUNC11 (struct tpc_list*) ; 
 int FUNC12 (struct tpc_list*) ; 

__attribute__((used)) static void
FUNC13(struct tpc_list *list)
{
	struct ctl_lun *lun = list->lun;
	struct ctl_softc *softc = lun->ctl_softc;
	struct scsi_ec_segment *seg;
	struct ctl_scsiio *ctsio = list->ctsio;
	int retval = CTL_RETVAL_COMPLETE;
	uint8_t csi[4];

	if (list->service_action == EC_WUT) {
		if (list->token != NULL)
			retval = FUNC11(list);
		else
			retval = FUNC12(list);
		if (retval == CTL_RETVAL_QUEUED)
			return;
		if (retval == CTL_RETVAL_ERROR) {
			list->error = 1;
			goto done;
		}
	} else {
//printf("ZZZ %d cscd, %d segs\n", list->ncscd, list->nseg);
		while (list->curseg < list->nseg) {
			seg = list->seg[list->curseg];
			switch (seg->type_code) {
			case EC_SEG_B2B:
				retval = FUNC8(list);
				break;
			case EC_SEG_VERIFY:
				retval = FUNC10(list);
				break;
			case EC_SEG_REGISTER_KEY:
				retval = FUNC9(list);
				break;
			default:
				FUNC7(list->curseg, csi);
				FUNC2(ctsio, /*current_error*/ 1,
				    /*sense_key*/ SSD_KEY_COPY_ABORTED,
				    /*asc*/ 0x26, /*ascq*/ 0x09,
				    SSD_ELEM_COMMAND, sizeof(csi), csi,
				    SSD_ELEM_NONE);
				goto done;
			}
			if (retval == CTL_RETVAL_QUEUED)
				return;
			if (retval == CTL_RETVAL_ERROR) {
				list->error = 1;
				goto done;
			}
			list->curseg++;
			list->stage = 0;
		}
	}

	FUNC3(ctsio);

done:
//printf("ZZZ done\n");
	FUNC4(list->params, M_CTL);
	list->params = NULL;
	if (list->token) {
		FUNC5(&softc->tpc_lock);
		if (--list->token->active == 0)
			list->token->last_active = time_uptime;
		FUNC6(&softc->tpc_lock);
		list->token = NULL;
	}
	FUNC5(&lun->lun_lock);
	if ((list->flags & EC_LIST_ID_USAGE_MASK) == EC_LIST_ID_USAGE_NONE) {
		FUNC0(&lun->tpc_lists, list, links);
		FUNC4(list, M_CTL);
	} else {
		list->completed = 1;
		list->last_active = time_uptime;
		list->sense_data = ctsio->sense_data;
		list->sense_len = ctsio->sense_len;
		list->scsi_status = ctsio->scsi_status;
	}
	FUNC6(&lun->lun_lock);

	FUNC1((union ctl_io *)ctsio);
}