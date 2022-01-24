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
 int /*<<< orphan*/  __dmadat ; 
 int bootdev ; 
 int /*<<< orphan*/ * dmadat ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(const char *device)
{

	if ((bootdev = FUNC1(device)) == -1) {
		FUNC2("domount: can't open device\n");
		return (-1);
	}
#ifndef ZFSBOOT
	dmadat = &__dmadat;
	if (FUNC0(0, NULL, 0)) {
		FUNC2("domount: can't read superblock\n");
		return (-1);
	}
#endif
	return (0);
}