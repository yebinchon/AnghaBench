#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  gme_ds; } ;
typedef  TYPE_1__ guid_map_entry_t ;
typedef  TYPE_1__ avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	avl_tree_t *ca = arg;
	void *cookie = NULL;
	guid_map_entry_t *gmep;

	while ((gmep = FUNC1(ca, &cookie)) != NULL) {
		FUNC2(gmep->gme_ds, gmep);
		FUNC3(gmep->gme_ds, gmep);
		FUNC4(gmep, sizeof (guid_map_entry_t));
	}
	FUNC0(ca);
	FUNC4(ca, sizeof (avl_tree_t));
}