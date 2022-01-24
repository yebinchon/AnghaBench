#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ud; } ;
struct TYPE_7__ {int keylen; } ;
struct TYPE_8__ {int len; int flags; scalar_t__ type; TYPE_1__ value; struct TYPE_8__** trash_stack; TYPE_2__ hh; } ;
typedef  TYPE_3__ ucl_object_t ;
struct ucl_object_userdata {int /*<<< orphan*/  (* dtor ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_3__*) ; 
 int UCL_OBJECT_EPHEMERAL ; 
 size_t UCL_TRASH_KEY ; 
 size_t UCL_TRASH_VALUE ; 
 scalar_t__ UCL_USERDATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (ucl_object_t *obj)
{
	if (obj->trash_stack[UCL_TRASH_KEY] != NULL) {
		FUNC0 (obj->hh.keylen, obj->trash_stack[UCL_TRASH_KEY]);
	}
	if (obj->trash_stack[UCL_TRASH_VALUE] != NULL) {
		FUNC0 (obj->len, obj->trash_stack[UCL_TRASH_VALUE]);
	}
	/* Do not free ephemeral objects */
	if ((obj->flags & UCL_OBJECT_EPHEMERAL) == 0) {
		if (obj->type != UCL_USERDATA) {
			FUNC0 (sizeof (ucl_object_t), obj);
		}
		else {
			struct ucl_object_userdata *ud = (struct ucl_object_userdata *)obj;
			if (ud->dtor) {
				ud->dtor (obj->value.ud);
			}
			FUNC0 (sizeof (*ud), obj);
		}
	}
}