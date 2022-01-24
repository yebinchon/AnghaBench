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
 scalar_t__ HALF_LEN ; 
 int TRAIL_IDENTICAL ; 
 int TRAIL_NEWER ; 
 int TRAIL_OLDER ; 
 int TRAIL_RENAMED ; 
 int FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,scalar_t__) ; 

int
FUNC2(const char *name0, const char *name1)
{
	int ret;

	ret = FUNC0(name0, name1);
	if (ret == 0)
		return (TRAIL_IDENTICAL);
	if (FUNC1(name0, name1, HALF_LEN + 1) == 0)
		return (TRAIL_RENAMED);
	return (ret < 0 ? TRAIL_OLDER : TRAIL_NEWER);
}