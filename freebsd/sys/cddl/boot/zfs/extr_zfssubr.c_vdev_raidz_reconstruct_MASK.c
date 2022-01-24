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
struct TYPE_6__ {int rm_firstdatacol; int rm_cols; TYPE_1__* rm_col; } ;
typedef  TYPE_2__ raidz_map_t ;
struct TYPE_5__ {scalar_t__ rc_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VDEV_RAIDZ_MAXPARITY ; 
 int FUNC1 (TYPE_2__*,int*,int) ; 

__attribute__((used)) static int
FUNC2(raidz_map_t *rm, int *t, int nt)
{
	int tgts[VDEV_RAIDZ_MAXPARITY];
	int ntgts;
	int i, c;
	int code;
	int nbadparity, nbaddata;

	/*
	 * The tgts list must already be sorted.
	 */
	for (i = 1; i < nt; i++) {
		FUNC0(t[i] > t[i - 1]);
	}

	nbadparity = rm->rm_firstdatacol;
	nbaddata = rm->rm_cols - nbadparity;
	ntgts = 0;
	for (i = 0, c = 0; c < rm->rm_cols; c++) {
		if (i < nt && c == t[i]) {
			tgts[ntgts++] = c;
			i++;
		} else if (rm->rm_col[c].rc_error != 0) {
			tgts[ntgts++] = c;
		} else if (c >= rm->rm_firstdatacol) {
			nbaddata--;
		} else {
			nbadparity--;
		}
	}

	FUNC0(ntgts >= nt);
	FUNC0(nbaddata >= 0);
	FUNC0(nbaddata + nbadparity == ntgts);

	code = FUNC1(rm, tgts, ntgts);
	FUNC0(code < (1 << VDEV_RAIDZ_MAXPARITY));
	FUNC0(code > 0);
	return (code);
}