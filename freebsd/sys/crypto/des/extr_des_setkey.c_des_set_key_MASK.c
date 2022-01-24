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
typedef  int /*<<< orphan*/  des_key_schedule ;

/* Variables and functions */
 scalar_t__ des_check_key ; 
 int FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int /*<<< orphan*/ ) ; 

int FUNC2(const unsigned char *key, des_key_schedule schedule)
{
	if (des_check_key)
	{
		return FUNC0(key, schedule);
	}
	else
	{
		FUNC1(key, schedule);
		return 0;
	}
}