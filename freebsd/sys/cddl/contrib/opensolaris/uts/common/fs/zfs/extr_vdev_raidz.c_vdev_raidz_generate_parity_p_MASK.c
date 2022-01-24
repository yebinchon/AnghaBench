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
typedef  int /*<<< orphan*/  uint64_t ;
struct pqr_struct {int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_5__ {int rm_firstdatacol; int rm_cols; TYPE_1__* rm_col; } ;
typedef  TYPE_2__ raidz_map_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_4__ {int /*<<< orphan*/  rc_size; int /*<<< orphan*/ * rc_abd; } ;

/* Variables and functions */
 size_t VDEV_RAIDZ_P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pqr_struct*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vdev_raidz_p_func ; 

__attribute__((used)) static void
FUNC3(raidz_map_t *rm)
{
	uint64_t *p;
	int c;
	abd_t *src;

	for (c = rm->rm_firstdatacol; c < rm->rm_cols; c++) {
		src = rm->rm_col[c].rc_abd;
		p = FUNC2(rm->rm_col[VDEV_RAIDZ_P].rc_abd);

		if (c == rm->rm_firstdatacol) {
			FUNC0(p, src, rm->rm_col[c].rc_size);
		} else {
			struct pqr_struct pqr = { p, NULL, NULL };
			(void) FUNC1(src, 0, rm->rm_col[c].rc_size,
			    vdev_raidz_p_func, &pqr);
		}
	}
}