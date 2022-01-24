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
 size_t WRITE_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ret_count ; 
 int /*<<< orphan*/ * slvpipe ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 

void
FUNC2(int count)
{
	int type;

	type = ret_count;
	if (FUNC1(slvpipe[WRITE_PIPE], &type, sizeof(int)) < 0)
		FUNC0(1, "command pipe write for count type failed");

	if (FUNC1(slvpipe[WRITE_PIPE], &count, sizeof(int)) < 0)
		FUNC0(1, "command pipe write for count");
}