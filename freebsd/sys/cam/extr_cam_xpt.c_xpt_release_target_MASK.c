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
struct cam_et {scalar_t__ refcount; struct cam_et* luns; int /*<<< orphan*/  luns_mtx; int /*<<< orphan*/  ed_entries; struct cam_eb* bus; } ;
struct cam_eb {int /*<<< orphan*/  eb_mtx; int /*<<< orphan*/  generation; int /*<<< orphan*/  et_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cam_et*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_et*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_eb*) ; 

__attribute__((used)) static void
FUNC8(struct cam_et *target)
{
	struct cam_eb *bus = target->bus;

	FUNC5(&bus->eb_mtx);
	if (--target->refcount > 0) {
		FUNC6(&bus->eb_mtx);
		return;
	}
	FUNC2(&bus->et_entries, target, links);
	bus->generation++;
	FUNC6(&bus->eb_mtx);
	FUNC0(FUNC1(&target->ed_entries),
	    ("destroying target, but device list is not empty"));
	FUNC7(bus);
	FUNC4(&target->luns_mtx);
	if (target->luns)
		FUNC3(target->luns, M_CAMXPT);
	FUNC3(target, M_CAMXPT);
}