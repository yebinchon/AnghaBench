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
struct torus {int /*<<< orphan*/ * sw_pool; scalar_t__ switch_cnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct torus*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct torus*) ; 

int FUNC2(struct torus *t)
{
	int s;
	bool success = true;

	for (s = 0; s < (int)t->switch_cnt; s++)
		success = FUNC0(t, t->sw_pool[s]) && success;

	success = success && FUNC1(t);

	return success ? 0 : -1;
}