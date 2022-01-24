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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * random_entropy_file ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
#ifdef __linux__
	FUNC1();
#endif /* __linux__ */
	FUNC2();
	FUNC0(random_entropy_file);
	random_entropy_file = NULL;
}