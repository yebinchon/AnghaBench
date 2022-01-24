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
struct pthread {scalar_t__ cancel_point; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CANCELED ; 
 scalar_t__ FUNC0 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct pthread *curthread, int maycancel)
{
	curthread->cancel_point = 0;
	if (FUNC2(FUNC0(curthread) &&
	    !FUNC1(curthread) && maycancel))
		FUNC3(PTHREAD_CANCELED);
}