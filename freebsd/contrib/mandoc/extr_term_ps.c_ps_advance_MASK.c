#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {size_t pscol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct termp*) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*) ; 

__attribute__((used)) static void
FUNC2(struct termp *p, size_t len)
{

	/*
	 * Advance some spaces.  This can probably be made smarter,
	 * i.e., to have multiple space-separated words in the same
	 * scope, but this is easier:  just close out the current scope
	 * and readjust our column settings.
	 */

	FUNC1(p);
	FUNC0(p);
	p->ps->pscol += len;
}