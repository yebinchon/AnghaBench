#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct pqr_struct {size_t* member_0; size_t* member_1; int /*<<< orphan*/ * member_2; } ;
struct TYPE_5__ {int rm_firstdatacol; int rm_cols; TYPE_1__* rm_col; } ;
typedef  TYPE_2__ raidz_map_t ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_4__ {int rc_size; int /*<<< orphan*/ * rc_abd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 size_t VDEV_RAIDZ_P ; 
 size_t VDEV_RAIDZ_Q ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct pqr_struct*) ; 
 size_t* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,size_t*,int) ; 
 int /*<<< orphan*/  vdev_raidz_pq_func ; 

__attribute__((used)) static void
FUNC6(raidz_map_t *rm)
{
	uint64_t *p, *q, pcnt, ccnt, mask, i;
	int c;
	abd_t *src;

	pcnt = rm->rm_col[VDEV_RAIDZ_P].rc_size / sizeof (p[0]);
	FUNC0(rm->rm_col[VDEV_RAIDZ_P].rc_size ==
	    rm->rm_col[VDEV_RAIDZ_Q].rc_size);

	for (c = rm->rm_firstdatacol; c < rm->rm_cols; c++) {
		src = rm->rm_col[c].rc_abd;
		p = FUNC4(rm->rm_col[VDEV_RAIDZ_P].rc_abd);
		q = FUNC4(rm->rm_col[VDEV_RAIDZ_Q].rc_abd);

		ccnt = rm->rm_col[c].rc_size / sizeof (p[0]);

		if (c == rm->rm_firstdatacol) {
			FUNC2(p, src, rm->rm_col[c].rc_size);
			(void) FUNC5(q, p, rm->rm_col[c].rc_size);
		} else {
			struct pqr_struct pqr = { p, q, NULL };
			(void) FUNC3(src, 0, rm->rm_col[c].rc_size,
			    vdev_raidz_pq_func, &pqr);
		}

		if (c == rm->rm_firstdatacol) {
			for (i = ccnt; i < pcnt; i++) {
				p[i] = 0;
				q[i] = 0;
			}
		} else {
			/*
			 * Treat short columns as though they are full of 0s.
			 * Note that there's therefore nothing needed for P.
			 */
			for (i = ccnt; i < pcnt; i++) {
				FUNC1(q[i], mask);
			}
		}
	}
}