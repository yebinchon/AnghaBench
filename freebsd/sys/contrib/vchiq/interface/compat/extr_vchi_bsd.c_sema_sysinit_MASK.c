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
struct semaphore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct semaphore*,int) ; 

void FUNC1(void *arg)
{
	struct semaphore *s = arg;

	FUNC0(s, 1);
}