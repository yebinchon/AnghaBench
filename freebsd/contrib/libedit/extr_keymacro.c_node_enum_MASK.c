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
typedef  scalar_t__ ssize_t ;
struct TYPE_8__ {struct TYPE_8__* sibling; struct TYPE_8__* next; int /*<<< orphan*/  type; int /*<<< orphan*/  val; int /*<<< orphan*/  ch; } ;
typedef  TYPE_2__ keymacro_node_t ;
struct TYPE_7__ {char* buf; } ;
struct TYPE_9__ {TYPE_1__ el_keymacro; int /*<<< orphan*/  el_errfile; } ;
typedef  TYPE_3__ EditLine ;

/* Variables and functions */
 int KEY_BUFSIZ ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(EditLine *el, keymacro_node_t *ptr, size_t cnt)
{
        ssize_t used;

	if (cnt >= KEY_BUFSIZ - 5) {	/* buffer too small */
		el->el_keymacro.buf[++cnt] = '"';
		el->el_keymacro.buf[++cnt] = '\0';
		(void) FUNC1(el->el_errfile,
		    "Some extended keys too long for internal print buffer");
		(void) FUNC1(el->el_errfile, " \"%s...\"\n",
		    el->el_keymacro.buf);
		return 0;
	}
	if (ptr == NULL) {
#ifdef DEBUG_EDIT
		(void) fprintf(el->el_errfile,
		    "node_enum: BUG!! Null ptr passed\n!");
#endif
		return -1;
	}
	/* put this char at end of str */
        used = FUNC0(el->el_keymacro.buf + cnt, KEY_BUFSIZ - cnt,
	    ptr->ch);
	if (ptr->next == NULL) {
		/* print this key and function */
		el->el_keymacro.buf[cnt + (size_t)used   ] = '"';
		el->el_keymacro.buf[cnt + (size_t)used + 1] = '\0';
		FUNC2(el, el->el_keymacro.buf, &ptr->val, ptr->type);
	} else
		(void) FUNC3(el, ptr->next, cnt + (size_t)used);

	/* go to sibling if there is one */
	if (ptr->sibling)
		(void) FUNC3(el, ptr->sibling, cnt);
	return 0;
}