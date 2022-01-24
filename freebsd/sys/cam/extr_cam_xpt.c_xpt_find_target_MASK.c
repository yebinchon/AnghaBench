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
typedef  scalar_t__ target_id_t ;
struct cam_et {scalar_t__ target_id; int /*<<< orphan*/  refcount; } ;
struct cam_eb {int /*<<< orphan*/  et_entries; int /*<<< orphan*/  eb_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct cam_et* FUNC0 (int /*<<< orphan*/ *) ; 
 struct cam_et* FUNC1 (struct cam_et*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cam_et *
FUNC3(struct cam_eb *bus, target_id_t	target_id)
{
	struct cam_et *target;

	FUNC2(&bus->eb_mtx, MA_OWNED);
	for (target = FUNC0(&bus->et_entries);
	     target != NULL;
	     target = FUNC1(target, links)) {
		if (target->target_id == target_id) {
			target->refcount++;
			break;
		}
	}
	return (target);
}