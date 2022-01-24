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
struct pthread {int cancel_point; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pthread*) ; 

void
FUNC1(struct pthread *curthread)
{
	curthread->cancel_point = 1;
	FUNC0(curthread);
}