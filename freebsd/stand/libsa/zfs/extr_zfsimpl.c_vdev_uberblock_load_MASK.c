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
typedef  int /*<<< orphan*/  vdev_t ;
typedef  int /*<<< orphan*/  uberblock_t ;

/* Variables and functions */
 int VDEV_LABELS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(vdev_t *vd, uberblock_t *ub)
{
	uberblock_t *buf;

	buf = FUNC4(FUNC2(vd));
	if (buf == NULL)
		return;

	for (int l = 0; l < VDEV_LABELS; l++) {
		for (int n = 0; n < FUNC0(vd); n++) {
			if (FUNC6(vd, l, buf,
			    FUNC1(vd, n),
			    FUNC2(vd)))
				continue;
			if (FUNC5(buf) != 0)
				continue;

			if (FUNC7(buf, ub) > 0)
				*ub = *buf;
		}
	}
	FUNC3(buf);
}