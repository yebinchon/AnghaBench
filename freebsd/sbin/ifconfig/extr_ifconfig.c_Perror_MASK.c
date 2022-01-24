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
#define  ENXIO 129 
#define  EPERM 128 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 

void
FUNC2(const char *cmd)
{
	switch (errno) {

	case ENXIO:
		FUNC1(1, "%s: no such interface", cmd);
		break;

	case EPERM:
		FUNC1(1, "%s: permission denied", cmd);
		break;

	default:
		FUNC0(1, "%s", cmd);
	}
}