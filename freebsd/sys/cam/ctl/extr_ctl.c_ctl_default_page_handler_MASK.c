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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; } ;
struct ctl_page_index {int page_len; int /*<<< orphan*/  subpage; int /*<<< orphan*/  page_code; int /*<<< orphan*/ * page_data; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; } ;

/* Variables and functions */
 struct ctl_lun* FUNC0 (struct ctl_scsiio*) ; 
 int CTL_PAGE_CURRENT ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  CTL_UA_MODE_CHANGE ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct ctl_scsiio *ctsio,
			 struct ctl_page_index *page_index, uint8_t *page_ptr)
{
	struct ctl_lun *lun = FUNC0(ctsio);
	uint8_t *current_cp;
	int set_ua;
	uint32_t initidx;

	initidx = FUNC2(&ctsio->io_hdr.nexus);
	set_ua = 0;

	current_cp = (page_index->page_data + (page_index->page_len *
	    CTL_PAGE_CURRENT));

	FUNC6(&lun->lun_lock);
	if (FUNC4(current_cp, page_ptr, page_index->page_len)) {
		FUNC5(current_cp, page_ptr, page_index->page_len);
		set_ua = 1;
	}
	if (set_ua != 0)
		FUNC1(lun, initidx, CTL_UA_MODE_CHANGE);
	FUNC7(&lun->lun_lock);
	if (set_ua) {
		FUNC3(lun,
		    FUNC2(&ctsio->io_hdr.nexus),
		    page_index->page_code, page_index->subpage);
	}
	return (CTL_RETVAL_COMPLETE);
}