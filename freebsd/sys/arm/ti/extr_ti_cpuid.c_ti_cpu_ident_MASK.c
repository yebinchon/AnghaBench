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
#define  CHIP_AM335X 129 
#define  CHIP_OMAP_4 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void *dummy)
{
	if (!FUNC4())
		return;
	switch(FUNC3()) {
	case CHIP_OMAP_4:
		FUNC1();
		break;
	case CHIP_AM335X:
		FUNC0();
		break;
	default:
		FUNC2("Unknown chip type, fixme!\n");
	}
}