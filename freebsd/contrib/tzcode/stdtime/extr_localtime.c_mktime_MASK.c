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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lcl_rwlock ; 
 int /*<<< orphan*/  localsub ; 
 int /*<<< orphan*/  FUNC2 (struct tm* const,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

time_t
FUNC4(struct tm *const tmp)
{
	time_t mktime_return_value;
	FUNC0(&lcl_rwlock);
	FUNC3(1);
	mktime_return_value = FUNC2(tmp, localsub, 0L);
	FUNC1(&lcl_rwlock);
	return(mktime_return_value);
}