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
 int /*<<< orphan*/  bulk_waiter_spinlock ; 
 int /*<<< orphan*/  quota_spinlock ; 
 int /*<<< orphan*/  service_spinlock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(void)
{
	FUNC0(&service_spinlock);
	FUNC0(&bulk_waiter_spinlock);
	FUNC0(&quota_spinlock);
}