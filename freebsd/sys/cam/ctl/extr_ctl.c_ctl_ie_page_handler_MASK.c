#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct scsi_info_exceptions_page {int info_flags; scalar_t__ mrie; int /*<<< orphan*/  interval_timer; int /*<<< orphan*/  report_count; } ;
struct ctl_scsiio {int dummy; } ;
struct ctl_page_index {int dummy; } ;
struct ctl_lun {int ie_asc; int ie_ascq; int ie_reported; int ie_reportcnt; int /*<<< orphan*/  lun_lock; int /*<<< orphan*/  ie_callout; } ;

/* Variables and functions */
 struct ctl_lun* FUNC0 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  CTL_UA_IE ; 
 int SIEP_FLAGS_TEST ; 
 scalar_t__ SIEP_MRIE_UA ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ctl_lun*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_lun*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_scsiio*,struct ctl_page_index*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_lun*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctl_ie_timer ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct ctl_scsiio *ctsio,
			 struct ctl_page_index *page_index, uint8_t *page_ptr)
{
	struct ctl_lun *lun = FUNC0(ctsio);
	struct scsi_info_exceptions_page *pg;
	uint64_t t;

	(void)FUNC4(ctsio, page_index, page_ptr);

	pg = (struct scsi_info_exceptions_page *)page_ptr;
	FUNC6(&lun->lun_lock);
	if (pg->info_flags & SIEP_FLAGS_TEST) {
		lun->ie_asc = 0x5d;
		lun->ie_ascq = 0xff;
		if (pg->mrie == SIEP_MRIE_UA) {
			FUNC5(lun, -1, CTL_UA_IE);
			lun->ie_reported = 1;
		} else {
			FUNC3(lun, -1, CTL_UA_IE);
			lun->ie_reported = -1;
		}
		lun->ie_reportcnt = 1;
		if (lun->ie_reportcnt < FUNC8(pg->report_count)) {
			lun->ie_reportcnt++;
			t = FUNC8(pg->interval_timer);
			if (t == 0 || t == UINT32_MAX)
				t = 3000;  /* 5 min */
			FUNC1(&lun->ie_callout, t * hz / 10,
			    ctl_ie_timer, lun);
		}
	} else {
		lun->ie_asc = 0;
		lun->ie_ascq = 0;
		lun->ie_reported = 1;
		FUNC3(lun, -1, CTL_UA_IE);
		lun->ie_reportcnt = UINT32_MAX;
		FUNC2(&lun->ie_callout);
	}
	FUNC7(&lun->lun_lock);
	return (CTL_RETVAL_COMPLETE);
}