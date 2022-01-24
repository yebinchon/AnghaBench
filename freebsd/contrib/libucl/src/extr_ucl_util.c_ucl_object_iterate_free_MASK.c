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
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct ucl_object_safe_iter {int /*<<< orphan*/ * expl_it; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct ucl_object_safe_iter* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_object_safe_iter*) ; 

void
FUNC3 (ucl_object_iter_t it)
{
	struct ucl_object_safe_iter *rit = FUNC1 (it);

	FUNC2 (rit);

	if (rit->expl_it != NULL) {
		FUNC0 (sizeof (*rit->expl_it), rit->expl_it);
	}

	FUNC0 (sizeof (*rit), it);
}