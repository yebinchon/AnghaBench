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
struct manpage {struct manpage* output; struct manpage* names; struct manpage* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct manpage*) ; 

void
FUNC1(struct manpage *res, size_t sz)
{
	size_t	 i;

	for (i = 0; i < sz; i++) {
		FUNC0(res[i].file);
		FUNC0(res[i].names);
		FUNC0(res[i].output);
	}
	FUNC0(res);
}