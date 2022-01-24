#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* str; } ;
struct TYPE_8__ {int type; TYPE_1__ val; struct TYPE_8__* sibling; struct TYPE_8__* next; } ;
typedef  TYPE_2__ keymacro_node_t ;
struct TYPE_9__ {int /*<<< orphan*/  el_errfile; } ;
typedef  TYPE_3__ EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  XK_CMD 130 
#define  XK_NOD 129 
#define  XK_STR 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(EditLine *el, keymacro_node_t *ptr)
{
	if (ptr == NULL)
		return;

	if (ptr->next != NULL) {
		FUNC2(el, ptr->next);
		ptr->next = NULL;
	}
	FUNC2(el, ptr->sibling);

	switch (ptr->type) {
	case XK_CMD:
	case XK_NOD:
		break;
	case XK_STR:
		if (ptr->val.str != NULL)
			FUNC1(ptr->val.str);
		break;
	default:
		FUNC0((el->el_errfile, "Bad XK_ type %d\n", ptr->type));
		break;
	}
	FUNC1(ptr);
}