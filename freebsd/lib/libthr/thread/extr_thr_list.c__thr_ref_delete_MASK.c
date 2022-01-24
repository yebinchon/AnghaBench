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
struct pthread {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*,struct pthread*) ; 

void
FUNC3(struct pthread *curthread, struct pthread *thread)
{
	FUNC1(curthread, thread);
	thread->refcount--;
	FUNC2(curthread, thread);
	FUNC0(curthread);
}