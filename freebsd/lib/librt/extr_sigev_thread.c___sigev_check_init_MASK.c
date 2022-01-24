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
 int /*<<< orphan*/  __sigev_thread_init ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * sigev_default_thread ; 
 int /*<<< orphan*/  sigev_once ; 

int
FUNC2(void)
{
	if (!FUNC1())
		return (-1);

	FUNC0(&sigev_once, __sigev_thread_init);
	return (sigev_default_thread != NULL) ? 0 : -1;
}