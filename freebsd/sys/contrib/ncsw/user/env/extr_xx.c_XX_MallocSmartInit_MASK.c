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

/* Variables and functions */
 int E_NO_MEMORY ; 
 int E_OK ; 
 int /*<<< orphan*/  MALLOCSMART_POOL_SIZE ; 
 int /*<<< orphan*/  M_NETCOMMSW ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  XX_MallocSmartLock ; 
 scalar_t__ XX_MallocSmartPool ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(void)
{
	int error;

	error = E_OK;
	FUNC1(&XX_MallocSmartLock);

	if (XX_MallocSmartPool)
		goto out;

	/* Allocate MallocSmart pool */
	XX_MallocSmartPool = FUNC0(MALLOCSMART_POOL_SIZE, M_NETCOMMSW,
	    M_NOWAIT, 0, 0xFFFFFFFFFull, MALLOCSMART_POOL_SIZE, 0);
	if (!XX_MallocSmartPool) {
		error = E_NO_MEMORY;
		goto out;
	}

out:
	FUNC2(&XX_MallocSmartLock);
	return (error);
}