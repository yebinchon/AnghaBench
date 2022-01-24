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
struct varlist {scalar_t__ name; void* value; } ;

/* Variables and functions */
 int MAXLIST ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static void
FUNC1(
	struct varlist *vlist
	)
{
	register struct varlist *vl;

	for (vl = vlist; vl < vlist + MAXLIST && vl->name != 0; vl++) {
		FUNC0((void *)(intptr_t)vl->name);
		vl->name = 0;
		if (vl->value != 0) {
			FUNC0(vl->value);
			vl->value = 0;
		}
	}
}