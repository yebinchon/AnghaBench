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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 

void FUNC1(char *buf, int bufsz, void *val, int valsz)
{
	int mtu = *(int *)val;

	switch (mtu) {
	case 1:
		FUNC0(buf, bufsz, "256");
		break;
	case 2:
		FUNC0(buf, bufsz, "512");
		break;
	case 3:
		FUNC0(buf, bufsz, "1024");
		break;
	case 4:
		FUNC0(buf, bufsz, "2048");
		break;
	case 5:
		FUNC0(buf, bufsz, "4096");
		break;
	default:
		FUNC0(buf, bufsz, "?(%d)", mtu);
	}
}