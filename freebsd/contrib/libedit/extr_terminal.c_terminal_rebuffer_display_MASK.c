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
struct TYPE_8__ {void* v; void* h; } ;
typedef  TYPE_2__ coord_t ;
struct TYPE_7__ {TYPE_2__ t_size; } ;
struct TYPE_9__ {TYPE_1__ el_terminal; } ;
typedef  TYPE_3__ EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  T_co ; 
 int /*<<< orphan*/  T_li ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC3(EditLine *el)
{
	coord_t *c = &el->el_terminal.t_size;

	FUNC2(el);

	c->h = FUNC0(T_co);
	c->v = FUNC0(T_li);

	if (FUNC1(el) == -1)
		return -1;
	return 0;
}