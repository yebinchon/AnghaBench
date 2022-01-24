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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 

void FUNC2(char *buf, int bufsz, void *val, int valsz)
{
	int width = *(int *)val;

	switch (width) {
	case 1:
		FUNC1(buf, bufsz, "1X");
		break;
	case 2:
		FUNC1(buf, bufsz, "4X");
		break;
	case 4:
		FUNC1(buf, bufsz, "8X");
		break;
	case 8:
		FUNC1(buf, bufsz, "12X");
		break;
	case 16:
		FUNC1(buf, bufsz, "2X");
		break;
	default:
		FUNC0("bad width %d", width);
		FUNC1(buf, bufsz, "undefined (%d)", width);
		break;
	}
}