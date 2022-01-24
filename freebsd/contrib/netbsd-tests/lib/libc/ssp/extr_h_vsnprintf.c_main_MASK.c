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
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,char*,char*) ; 

int
FUNC2(int argc, char *argv[])
{
	size_t len = FUNC0(argv[1]);
	FUNC1(len, "%s", "012345678901234567890");
	return 0;
}