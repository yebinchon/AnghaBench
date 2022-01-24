#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* __bits; } ;
typedef  TYPE_1__ sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_SETMASK ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int
FUNC2(int mask)
{
	sigset_t set, oset;
	int n;

	FUNC1(&set);
	set.__bits[0] = mask;
	n = FUNC0(SIG_SETMASK, &set, &oset);
	if (n)
		return (n);
	return (oset.__bits[0]);
}