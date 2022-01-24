#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  marks; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  LMARK ;
typedef  TYPE_1__ EXF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  q ; 

int
FUNC3(
	SCR *sp,
	EXF *ep)
{
	LMARK *lmp;

	/*
	 * !!!
	 * ep MAY NOT BE THE SAME AS sp->ep, DON'T USE THE LATTER.
	 */
	while ((lmp = FUNC0(ep->marks)) != NULL) {
		FUNC1(ep->marks, q);
		FUNC2(lmp);
	}
	return (0);
}