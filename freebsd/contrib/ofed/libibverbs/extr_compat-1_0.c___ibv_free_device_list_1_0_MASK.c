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
typedef  int /*<<< orphan*/ **** ibv_device_1_0 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void FUNC2(struct ibv_device_1_0 **list)
{
	struct ibv_device_1_0 **l = list;

	while (*l) {
		FUNC0(*l);
		++l;
	}

	FUNC1((void *) list[-1]);
	FUNC0(list - 1);
}