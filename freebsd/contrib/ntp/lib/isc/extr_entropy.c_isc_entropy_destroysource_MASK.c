#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* ent; } ;
typedef  TYPE_1__ isc_entropysource_t ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ isc_entropy_t ;
typedef  scalar_t__ isc_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 

void
FUNC8(isc_entropysource_t **sourcep) {
	isc_entropysource_t *source;
	isc_entropy_t *ent;
	isc_boolean_t killit;

	FUNC1(sourcep != NULL);
	FUNC1(FUNC4(*sourcep));

	source = *sourcep;
	*sourcep = NULL;

	ent = source->ent;
	FUNC1(FUNC3(ent));

	FUNC0(&ent->lock);

	FUNC7(&source);

	killit = FUNC6(ent);

	FUNC2(&ent->lock);

	if (killit)
		FUNC5(&ent);
}