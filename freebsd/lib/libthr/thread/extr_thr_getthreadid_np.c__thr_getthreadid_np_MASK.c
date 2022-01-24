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
 int FUNC0 (struct pthread*) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(void)
{
	struct pthread *curthread;

	FUNC2();
	curthread = FUNC1();
	return (FUNC0(curthread));
}