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
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_1__ isc_entropy_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 

void
FUNC4(isc_entropy_t *ent, isc_entropy_t **entp) {
	FUNC1(FUNC3(ent));
	FUNC1(entp != NULL && *entp == NULL);

	FUNC0(&ent->lock);

	ent->refcnt++;
	*entp = ent;

	FUNC2(&ent->lock);
}