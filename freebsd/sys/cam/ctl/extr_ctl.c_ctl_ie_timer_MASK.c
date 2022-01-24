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
typedef  int uint64_t ;
struct TYPE_2__ {scalar_t__ mrie; int /*<<< orphan*/  interval_timer; int /*<<< orphan*/  report_count; } ;
struct ctl_lun {scalar_t__ ie_asc; scalar_t__ ie_reportcnt; int /*<<< orphan*/  ie_callout; TYPE_1__ MODE_IE; scalar_t__ ie_reported; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_UA_IE ; 
 scalar_t__ SIEP_MRIE_UA ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*,int,int /*<<< orphan*/ ) ; 
 int hz ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct ctl_lun *lun = arg;
	uint64_t t;

	if (lun->ie_asc == 0)
		return;

	if (lun->MODE_IE.mrie == SIEP_MRIE_UA)
		FUNC1(lun, -1, CTL_UA_IE);
	else
		lun->ie_reported = 0;

	if (lun->ie_reportcnt < FUNC2(lun->MODE_IE.report_count)) {
		lun->ie_reportcnt++;
		t = FUNC2(lun->MODE_IE.interval_timer);
		if (t == 0 || t == UINT32_MAX)
			t = 3000;  /* 5 min */
		FUNC0(&lun->ie_callout, t * hz / 10);
	}
}