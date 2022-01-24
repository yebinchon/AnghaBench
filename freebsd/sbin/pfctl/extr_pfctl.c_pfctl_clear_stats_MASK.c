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
 int /*<<< orphan*/  DIOCCLRSTATUS ; 
 int PF_OPT_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC3(int dev, int opts)
{
	if (FUNC2(dev, DIOCCLRSTATUS))
		FUNC0(1, "DIOCCLRSTATUS");
	if ((opts & PF_OPT_QUIET) == 0)
		FUNC1(stderr, "pf: statistics cleared\n");
	return (0);
}