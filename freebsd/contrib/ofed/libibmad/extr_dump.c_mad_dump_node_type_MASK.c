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
	int nodetype = *(int *)val;

	switch (nodetype) {
	case 1:
		FUNC0(buf, bufsz, "Channel Adapter");
		break;
	case 2:
		FUNC0(buf, bufsz, "Switch");
		break;
	case 3:
		FUNC0(buf, bufsz, "Router");
		break;
	default:
		FUNC0(buf, bufsz, "?(%d)?", nodetype);
		break;
	}
}