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
 int FUNC0 (char*,int,int,char const**) ; 

int
FUNC1(void)
{
	const char *errstr;

	if (FUNC0("1", 0, 2, &errstr) != 1)
		return 1;
	if (errstr != NULL)
		return 2;
	if (FUNC0("1x", 0, 2, &errstr) != 0)
		return 3;
	if (errstr == NULL)
		return 4;
	if (FUNC0("2", 0, 1, &errstr) != 0)
		return 5;
	if (errstr == NULL)
		return 6;
	if (FUNC0("0", 1, 2, &errstr) != 0)
		return 7;
	if (errstr == NULL)
		return 8;
	return 0;
}