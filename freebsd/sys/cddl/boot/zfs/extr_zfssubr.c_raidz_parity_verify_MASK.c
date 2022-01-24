#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int rm_firstdatacol; TYPE_2__* rm_col; } ;
typedef  TYPE_1__ raidz_map_t ;
struct TYPE_6__ {scalar_t__ rc_error; int /*<<< orphan*/  rc_size; int /*<<< orphan*/  rc_data; int /*<<< orphan*/  rc_tried; } ;
typedef  TYPE_2__ raidz_col_t ;

/* Variables and functions */
 scalar_t__ ECKSUM ; 
 int VDEV_RAIDZ_MAXPARITY ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(raidz_map_t *rm)
{
	void *orig[VDEV_RAIDZ_MAXPARITY];
	int c, ret = 0;
	raidz_col_t *rc;

	for (c = 0; c < rm->rm_firstdatacol; c++) {
		rc = &rm->rm_col[c];
		if (!rc->rc_tried || rc->rc_error != 0)
			continue;
		orig[c] = FUNC3(rc->rc_size);
		FUNC1(rc->rc_data, orig[c], rc->rc_size);
	}

	FUNC2(rm);

	for (c = rm->rm_firstdatacol - 1; c >= 0; c--) {
		rc = &rm->rm_col[c];
		if (!rc->rc_tried || rc->rc_error != 0)
			continue;
		if (FUNC0(orig[c], rc->rc_data, rc->rc_size) != 0) {
			rc->rc_error = ECKSUM;
			ret++;
		}
		FUNC4(orig[c], rc->rc_size);
	}

	return (ret);
}