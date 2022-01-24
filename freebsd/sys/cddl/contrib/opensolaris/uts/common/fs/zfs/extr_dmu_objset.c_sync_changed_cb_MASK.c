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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {scalar_t__ os_zil; int /*<<< orphan*/  os_sync; } ;
typedef  TYPE_1__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  ZFS_SYNC_DISABLED ; 
 int /*<<< orphan*/  ZFS_SYNC_STANDARD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, uint64_t newval)
{
	objset_t *os = arg;

	/*
	 * Inheritance and range checking should have been done by now.
	 */
	FUNC0(newval == ZFS_SYNC_STANDARD || newval == ZFS_SYNC_ALWAYS ||
	    newval == ZFS_SYNC_DISABLED);

	os->os_sync = newval;
	if (os->os_zil)
		FUNC1(os->os_zil, newval);
}