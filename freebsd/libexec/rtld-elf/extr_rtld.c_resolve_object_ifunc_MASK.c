#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ifuncs_resolved; scalar_t__ gnu_ifunc; scalar_t__ bind_now; scalar_t__ irelative; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(Obj_Entry *obj, bool bind_now, int flags,
    RtldLockState *lockstate)
{

	if (obj->ifuncs_resolved)
		return (0);
	obj->ifuncs_resolved = true;
	if (!obj->irelative && !((obj->bind_now || bind_now) && obj->gnu_ifunc))
		return (0);
	if (FUNC0(obj) == -1 ||
	    (obj->irelative && FUNC3(obj, lockstate) == -1) ||
	    ((obj->bind_now || bind_now) && obj->gnu_ifunc &&
	    FUNC2(obj, flags, lockstate) == -1) ||
	    FUNC1(obj) == -1)
		return (-1);
	return (0);
}