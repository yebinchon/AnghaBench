#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cam_eb {scalar_t__ path_id; int /*<<< orphan*/  refcount; } ;
typedef  scalar_t__ path_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  xpt_busses; } ;

/* Variables and functions */
 struct cam_eb* FUNC0 (int /*<<< orphan*/ *) ; 
 struct cam_eb* FUNC1 (struct cam_eb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ xsoftc ; 

__attribute__((used)) static struct cam_eb *
FUNC4(path_id_t path_id)
{
	struct cam_eb *bus;

	FUNC2();
	for (bus = FUNC0(&xsoftc.xpt_busses);
	     bus != NULL;
	     bus = FUNC1(bus, links)) {
		if (bus->path_id == path_id) {
			bus->refcount++;
			break;
		}
	}
	FUNC3();
	return (bus);
}