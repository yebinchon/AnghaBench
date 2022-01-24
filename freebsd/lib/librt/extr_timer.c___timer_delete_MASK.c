#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* timer_t ;
struct TYPE_4__ {int /*<<< orphan*/  oshandle; int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(timer_t timerid)
{
	int ret, err;

	if (timerid->node != NULL) {
		FUNC1();
		FUNC0(timerid->node);
		FUNC2();
	}
	ret = FUNC3(timerid->oshandle);
	err = errno;
	FUNC4(timerid);
	errno = err;
	return (ret);	
}