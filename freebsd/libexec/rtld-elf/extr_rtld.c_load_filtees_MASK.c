#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int filtees_loaded; int /*<<< orphan*/  needed_aux_filtees; int /*<<< orphan*/  needed_filtees; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{

    FUNC1(lockstate);
    if (!obj->filtees_loaded) {
	FUNC0(obj, obj->needed_filtees, flags, lockstate);
	FUNC0(obj, obj->needed_aux_filtees, flags, lockstate);
	obj->filtees_loaded = true;
    }
}