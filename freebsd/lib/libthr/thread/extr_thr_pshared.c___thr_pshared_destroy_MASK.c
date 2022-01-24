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
 struct pthread* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC5 (struct pthread*) ; 

void
FUNC6(void *key)
{
	struct pthread *curthread;
	void *val;

	curthread = FUNC0();
	FUNC5(curthread);
	val = FUNC3(key);
	FUNC4(curthread);
	FUNC1(key, val);
	FUNC2(curthread);
}