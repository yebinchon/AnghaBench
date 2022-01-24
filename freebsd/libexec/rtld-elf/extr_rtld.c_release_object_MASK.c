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
struct TYPE_5__ {scalar_t__ holdcount; int unholdfree; int /*<<< orphan*/  mapsize; int /*<<< orphan*/  mapbase; } ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(Obj_Entry *obj)
{

	if (obj->holdcount > 0) {
		obj->unholdfree = true;
		return;
	}
	FUNC1(obj->mapbase, obj->mapsize);
	FUNC0(obj);
	FUNC2(obj);
}