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
typedef  int /*<<< orphan*/  zvol_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(const char *name)
{
	zvol_state_t *zv;
	int rc;

	FUNC1(&zfsdev_state_lock);
	if ((zv = FUNC3(name)) == NULL) {
		FUNC2(&zfsdev_state_lock);
		return (FUNC0(ENXIO));
	}
	rc = FUNC4(zv);
	FUNC2(&zfsdev_state_lock);
	return (rc);
}