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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  __int64_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

int
FUNC1(time_t t)
{
    if (sizeof(int) == sizeof(__int64_t))
	return(FUNC0(t));
    return((int)t);
}