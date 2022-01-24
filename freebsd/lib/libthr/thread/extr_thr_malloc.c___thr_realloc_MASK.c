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
struct pthread {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*,size_t) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*) ; 

void *
FUNC4(void *cp, size_t nbytes)
{
	struct pthread *curthread;
	void *res;

	curthread = FUNC1();
	FUNC2(curthread);
	res = FUNC0(cp, nbytes);
	FUNC3(curthread);
	return (res);
}