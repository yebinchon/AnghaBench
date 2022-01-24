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
typedef  int /*<<< orphan*/  zfs_onexit_t ;
typedef  scalar_t__ minor_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZSST_CTLDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	zfs_onexit_t *zo;
	minor_t minor = (minor_t)(uintptr_t)data;

	if (minor == 0)
		return;

	FUNC0(&spa_namespace_lock);
	zo = FUNC3(minor, ZSST_CTLDEV);
	if (zo == NULL) {
		FUNC1(&spa_namespace_lock);
		return;
	}
	FUNC2(zo, minor);
	FUNC1(&spa_namespace_lock);
}