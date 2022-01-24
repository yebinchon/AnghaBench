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
struct TYPE_4__ {scalar_t__ dlopened; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 

int
FUNC5(void *arg)
{
	Obj_Entry *obj;
	RtldLockState lockstate;
	int res;

	FUNC4(rtld_bind_lock, &lockstate);
	obj = FUNC1(arg);
	if (obj == NULL)
		obj = FUNC3(arg);
	if (obj == NULL) {
		FUNC0("No shared object contains address");
		FUNC2(rtld_bind_lock, &lockstate);
		return (-1);
	}
	res = obj->dlopened ? 1 : 0;
	FUNC2(rtld_bind_lock, &lockstate);
	return (res);
}