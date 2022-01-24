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
typedef  int /*<<< orphan*/  sysevent_t ;
struct sysevent {int /*<<< orphan*/ * se_nvl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sysevent*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(sysevent_t *evp)
{
	struct sysevent *ev = (struct sysevent *)evp;

	FUNC0(evp != NULL);

	if (ev->se_nvl != NULL)
		FUNC2(ev->se_nvl);
	FUNC1(ev, sizeof(*ev));
}