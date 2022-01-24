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
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

void FUNC1(char *buf, int bufsz, void *val, int valsz)
{
	int mask = *(int *)val;
	char *s = buf;

	s += FUNC0(s, "0x%x\n", mask);
	if (mask & (1 << 0))
		s += FUNC0(s, "\t\t\t\tIsSetNodeDescriptionSupported\n");
	if (mask & (1 << 1))
		s += FUNC0(s, "\t\t\t\tIsPortInfoExtendedSupported\n");
	if (mask & (1 << 2))
		s += FUNC0(s, "\t\t\t\tIsVirtualizationSupported\n");
	if (mask & (1 << 3))
		s += FUNC0(s, "\t\t\t\tIsSwitchPortStateTableSupported\n");
	if (mask & (1 << 4))
		s += FUNC0(s, "\t\t\t\tIsLinkWidth2xSupported\n");

	if (s != buf)
		*(--s) = 0;
}