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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int hz ; 
 TYPE_1__ umass_uaa ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(void)
{
	uint32_t time;

	FUNC3();
	FUNC4();

	/* wait 8 seconds for a USB mass storage device to appear */
	for (time = 0; time < (8 * hz); time++) {
		FUNC2();
		FUNC1(1000000 / hz);
		time++;
		FUNC0(1);
		if (umass_uaa.device != NULL)
			return (0);
	}
	return (0);
}