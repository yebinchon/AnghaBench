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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(char *buf, int bufsz, void *val, int valsz)
{
	int width = *(int *)val;

	FUNC0(buf, bufsz, width);

	switch (width) {
	case 1:
	case 3:
	case 7:
	case 11:
	case 15:
	case 17:
	case 19:
	case 23:
	case 27:
	case 31:
		break;

	default:
		if (!(width >> 5))
			FUNC1(buf + FUNC2(buf), bufsz - FUNC2(buf),
				 " (IBA extension)");
		break;
	}
}