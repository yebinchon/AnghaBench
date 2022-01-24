#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ refcnt; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ isc_entropy_t ;
typedef  scalar_t__ isc_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

void
FUNC6(isc_entropy_t **entp) {
	isc_entropy_t *ent;
	isc_boolean_t killit;

	FUNC1(entp != NULL && FUNC3(*entp));
	ent = *entp;
	*entp = NULL;

	FUNC0(&ent->lock);

	FUNC1(ent->refcnt > 0);
	ent->refcnt--;

	killit = FUNC5(ent);

	FUNC2(&ent->lock);

	if (killit)
		FUNC4(&ent);
}