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
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 
 scalar_t__ FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 

int FUNC3(const unsigned char *key, des_key_schedule schedule)
{
	if (!FUNC0(key))
		return(-1);
	if (FUNC1(key))
		return(-2);
	FUNC2(key, schedule);
	return 0;
}