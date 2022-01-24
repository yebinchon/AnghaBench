#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
struct TYPE_9__ {int /*<<< orphan*/ * str; } ;
typedef  TYPE_1__ keymacro_value_t ;
struct TYPE_10__ {scalar_t__ const ch; int type; struct TYPE_10__* next; TYPE_1__ val; struct TYPE_10__* sibling; } ;
typedef  TYPE_2__ keymacro_node_t ;
struct TYPE_11__ {int /*<<< orphan*/  el_errfile; } ;
typedef  TYPE_3__ EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  XK_CMD 130 
#define  XK_NOD 129 
#define  XK_STR 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(EditLine *el, keymacro_node_t *ptr, const wchar_t *str,
    keymacro_value_t *val, int ntype)
{

	if (ptr->ch != *str) {
		keymacro_node_t *xm;

		for (xm = ptr; xm->sibling != NULL; xm = xm->sibling)
			if (xm->sibling->ch == *str)
				break;
		if (xm->sibling == NULL)
			xm->sibling = FUNC2(*str);	/* setup new node */
		ptr = xm->sibling;
	}
	if (*++str == '\0') {
		/* we're there */
		if (ptr->next != NULL) {
			FUNC3(el, ptr->next);
				/* lose longer keys with this prefix */
			ptr->next = NULL;
		}
		switch (ptr->type) {
		case XK_CMD:
		case XK_NOD:
			break;
		case XK_STR:
			if (ptr->val.str)
				FUNC1(ptr->val.str);
			break;
		default:
			FUNC0((el->el_errfile, "Bad XK_ type %d\n",
			    ptr->type));
			break;
		}

		switch (ptr->type = ntype) {
		case XK_CMD:
			ptr->val = *val;
			break;
		case XK_STR:
			if ((ptr->val.str = FUNC4(val->str)) == NULL)
				return -1;
			break;
		default:
			FUNC0((el->el_errfile, "Bad XK_ type %d\n", ntype));
			break;
		}
	} else {
		/* still more chars to go */
		if (ptr->next == NULL)
			ptr->next = FUNC2(*str);	/* setup new node */
		(void) FUNC5(el, ptr->next, str, val, ntype);
	}
	return 0;
}