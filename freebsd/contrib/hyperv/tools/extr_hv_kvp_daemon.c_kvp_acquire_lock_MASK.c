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
struct flock {int /*<<< orphan*/  l_pid; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  pool_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* kvp_pools ; 

__attribute__((used)) static void
FUNC4(int pool)
{
	struct flock fl = { 0, 0, 0, F_WRLCK, SEEK_SET, 0 };

	fl.l_pid = FUNC3();

	if (FUNC2(kvp_pools[pool].pool_fd, F_SETLKW, &fl) == -1) {
		FUNC0(LOG_ERR, "Failed to acquire the lock pool: %d", pool);
		FUNC1(EXIT_FAILURE);
	}
}