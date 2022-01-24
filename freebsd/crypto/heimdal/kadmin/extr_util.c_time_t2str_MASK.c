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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(time_t t, char *str, size_t len, int include_time)
{
    if(t) {
	if(include_time)
	    FUNC2(str, len, "%Y-%m-%d %H:%M:%S UTC", FUNC0(&t));
	else
	    FUNC2(str, len, "%Y-%m-%d", FUNC0(&t));
    } else
	FUNC1(str, len, "never");
}