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
struct cam_iosched_softc {int flags; int /*<<< orphan*/  ticker; int /*<<< orphan*/  sysctl_ctx; scalar_t__ sysctl_tree; int /*<<< orphan*/  cl; int /*<<< orphan*/  trim_stats; int /*<<< orphan*/  write_stats; int /*<<< orphan*/  read_stats; } ;

/* Variables and functions */
 int CAM_IOSCHED_FLAG_CALLOUT_ACTIVE ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  M_CAMSCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_iosched_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_iosched_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct cam_iosched_softc *isc)
{
	if (isc) {
		FUNC2(isc, NULL, ENXIO);
#ifdef CAM_IOSCHED_DYNAMIC
		cam_iosched_iop_stats_fini(&isc->read_stats);
		cam_iosched_iop_stats_fini(&isc->write_stats);
		cam_iosched_iop_stats_fini(&isc->trim_stats);
		cam_iosched_cl_sysctl_fini(&isc->cl);
		if (isc->sysctl_tree)
			if (sysctl_ctx_free(&isc->sysctl_ctx) != 0)
				printf("can't remove iosched sysctl stats context\n");
		if (isc->flags & CAM_IOSCHED_FLAG_CALLOUT_ACTIVE) {
			callout_drain(&isc->ticker);
			isc->flags &= ~ CAM_IOSCHED_FLAG_CALLOUT_ACTIVE;
		}
#endif
		FUNC4(isc, M_CAMSCHED);
	}
}