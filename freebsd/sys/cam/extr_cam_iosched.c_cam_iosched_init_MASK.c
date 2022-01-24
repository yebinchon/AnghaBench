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
struct cam_periph {int dummy; } ;
struct TYPE_2__ {int max; } ;
struct cam_iosched_softc {int sort_io_queue; int read_bias; int current_read_bias; int quanta; int /*<<< orphan*/  flags; int /*<<< orphan*/  ticker; int /*<<< orphan*/  cl; struct cam_periph* periph; int /*<<< orphan*/  last_time; TYPE_1__ trim_stats; TYPE_1__ write_stats; TYPE_1__ read_stats; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  trim_queue; int /*<<< orphan*/  bio_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_IOSCHED_FLAG_CALLOUT_ACTIVE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_CAMSCHED ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_iosched_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cam_iosched_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_iosched_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  cam_iosched_ticker ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 
 scalar_t__ do_dynamic_iosched ; 
 int hz ; 
 scalar_t__ iosched_debug ; 
 struct cam_iosched_softc* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct cam_iosched_softc*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(struct cam_iosched_softc **iscp, struct cam_periph *periph)
{

	*iscp = FUNC6(sizeof(**iscp), M_CAMSCHED, M_NOWAIT | M_ZERO);
	if (*iscp == NULL)
		return ENOMEM;
#ifdef CAM_IOSCHED_DYNAMIC
	if (iosched_debug)
		printf("CAM IOSCHEDULER Allocating entry at %p\n", *iscp);
#endif
	(*iscp)->sort_io_queue = -1;
	FUNC0(&(*iscp)->bio_queue);
	FUNC0(&(*iscp)->trim_queue);
#ifdef CAM_IOSCHED_DYNAMIC
	if (do_dynamic_iosched) {
		bioq_init(&(*iscp)->write_queue);
		(*iscp)->read_bias = 100;
		(*iscp)->current_read_bias = 100;
		(*iscp)->quanta = min(hz, 200);
		cam_iosched_iop_stats_init(*iscp, &(*iscp)->read_stats);
		cam_iosched_iop_stats_init(*iscp, &(*iscp)->write_stats);
		cam_iosched_iop_stats_init(*iscp, &(*iscp)->trim_stats);
		(*iscp)->trim_stats.max = 1;	/* Trims are special: one at a time for now */
		(*iscp)->last_time = sbinuptime();
		callout_init_mtx(&(*iscp)->ticker, cam_periph_mtx(periph), 0);
		(*iscp)->periph = periph;
		cam_iosched_cl_init(&(*iscp)->cl, *iscp);
		callout_reset(&(*iscp)->ticker, hz / (*iscp)->quanta, cam_iosched_ticker, *iscp);
		(*iscp)->flags |= CAM_IOSCHED_FLAG_CALLOUT_ACTIVE;
	}
#endif

	return 0;
}