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
typedef  int /*<<< orphan*/  leap_table_t ;

/* Variables and functions */
 int /*<<< orphan*/ * _lptr ; 
 int /*<<< orphan*/ * _ltab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

leap_table_t *
FUNC2(
	int alternate)
{
	leap_table_t *p1, *p2;

	p1 = _lptr;
	if (p1 == &_ltab[0]) {
		p2 = &_ltab[1];
	} else if (p1 == &_ltab[1]) {
		p2 = &_ltab[0];
	} else {
		p1 = &_ltab[0];
		p2 = &_ltab[1];
		FUNC1(p1);
		FUNC1(p2);
		_lptr = p1;
	}
	if (alternate) {
		FUNC0(p2, p1, sizeof(leap_table_t));
		p1 = p2;
	}

	return p1;
}