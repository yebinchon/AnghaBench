#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct TYPE_6__ {int l_ui; } ;
typedef  TYPE_1__ l_fp ;
struct TYPE_7__ {int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 scalar_t__ MJD_1900 ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stats_control ; 
 int /*<<< orphan*/  sys_badauth ; 
 int /*<<< orphan*/  sys_badlength ; 
 int /*<<< orphan*/  sys_declined ; 
 int /*<<< orphan*/  sys_kodsent ; 
 int /*<<< orphan*/  sys_limitrejected ; 
 int /*<<< orphan*/  sys_newversion ; 
 int /*<<< orphan*/  sys_oldversion ; 
 int /*<<< orphan*/  sys_processed ; 
 int /*<<< orphan*/  sys_received ; 
 int /*<<< orphan*/  sys_restricted ; 
 scalar_t__ sys_stattime ; 
 TYPE_3__ sysstats ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

void
FUNC6(void)
{
	l_fp	now;
	u_long	day;

	if (!stats_control)
		return;

	FUNC3(&now);
	FUNC1(&sysstats, now.l_ui);
	day = now.l_ui / 86400 + MJD_1900;
	now.l_ui %= 86400;
	if (sysstats.fp != NULL) {
		FUNC2(sysstats.fp,
		    "%lu %d %lu %d %d %d %d %d %d %d %d %d %d\n",
		    day, FUNC5(&now, 3), current_time - sys_stattime,
		    sys_received, sys_processed, sys_newversion,
		    sys_oldversion, sys_restricted, sys_badlength,
		    sys_badauth, sys_declined, sys_limitrejected,
		    sys_kodsent);
		FUNC0(sysstats.fp);
		FUNC4();
	}
}