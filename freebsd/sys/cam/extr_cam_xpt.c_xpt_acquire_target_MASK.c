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
struct cam_et {int /*<<< orphan*/  refcount; struct cam_eb* bus; } ;
struct cam_eb {int /*<<< orphan*/  eb_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct cam_et *target)
{
	struct cam_eb *bus = target->bus;

	FUNC0(&bus->eb_mtx);
	target->refcount++;
	FUNC1(&bus->eb_mtx);
}