#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  sio_zb; int /*<<< orphan*/  sio_flags; scalar_t__ sio_asize; } ;
typedef  TYPE_2__ scan_io_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_14__ {int /*<<< orphan*/  scn_bytes_pending; int /*<<< orphan*/  scn_dp; } ;
typedef  TYPE_3__ dsl_scan_t ;
struct TYPE_15__ {TYPE_1__* q_vd; TYPE_3__* q_scn; } ;
typedef  TYPE_4__ dsl_scan_io_queue_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_12__ {int /*<<< orphan*/  vdev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC8(dsl_scan_io_queue_t *queue, list_t *io_list)
{
	dsl_scan_t *scn = queue->q_scn;
	scan_io_t *sio;
	int64_t bytes_issued = 0;
	boolean_t suspended = B_FALSE;

	while ((sio = FUNC2(io_list)) != NULL) {
		blkptr_t bp;

		if (FUNC5(scn)) {
			suspended = B_TRUE;
			break;
		}

		FUNC7(sio, &bp, queue->q_vd->vdev_id);
		bytes_issued += sio->sio_asize;
		FUNC4(scn->scn_dp, &bp, sio->sio_flags,
		    &sio->sio_zb, queue);
		(void) FUNC3(io_list);
		FUNC6(queue, &bp);
		FUNC1(sio, sizeof (*sio));
	}

	FUNC0(&scn->scn_bytes_pending, -bytes_issued);

	return (suspended);
}