#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_4__* wbuff; TYPE_4__* cbuff; } ;
struct TYPE_19__ {TYPE_4__* wbuff; TYPE_4__* cbuff; } ;
struct TYPE_18__ {TYPE_4__* wbuff; TYPE_4__* cbuff; } ;
struct TYPE_21__ {int el_flags; TYPE_3__ el_lgcyconv; TYPE_2__ el_scratch; TYPE_1__ el_visual; struct TYPE_21__* el_prog; int /*<<< orphan*/  el_read; } ;
typedef  TYPE_4__ EditLine ;

/* Variables and functions */
 int NO_TTY ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 

void
FUNC13(EditLine *el)
{

	if (el == NULL)
		return;

	FUNC2(el);

	FUNC11(el);
	FUNC4(el);
	FUNC6(el);
	if (!(el->el_flags & NO_TTY))
		FUNC12(el, TCSAFLUSH);
	FUNC0(el);
	FUNC8(el->el_read);
	FUNC9(el);
	FUNC3(el);
	FUNC7(el);
	FUNC10(el);
	FUNC5(el);

	FUNC1(el->el_prog);
	FUNC1(el->el_visual.cbuff);
	FUNC1(el->el_visual.wbuff);
	FUNC1(el->el_scratch.cbuff);
	FUNC1(el->el_scratch.wbuff);
	FUNC1(el->el_lgcyconv.cbuff);
	FUNC1(el->el_lgcyconv.wbuff);
	FUNC1(el);
}