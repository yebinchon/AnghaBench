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
typedef  scalar_t__ wint_t ;
typedef  int /*<<< orphan*/  wctype_t ;
struct parse {int dummy; } ;
struct TYPE_4__ {scalar_t__ ntypes; int /*<<< orphan*/ * types; } ;
typedef  TYPE_1__ cset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parse*,TYPE_1__*,scalar_t__) ; 
 scalar_t__ NC ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC4(struct parse *p, cset *cs, wctype_t wct)
{
	wint_t i;
	wctype_t *newtypes;

	for (i = 0; i < NC; i++)
		if (FUNC2(i, wct))
			FUNC0(p, cs, i);
	newtypes = FUNC3(cs->types, cs->ntypes + 1,
	    sizeof(*cs->types));
	if (newtypes == NULL) {
		FUNC1(REG_ESPACE);
		return;
	}
	cs->types = newtypes;
	cs->types[cs->ntypes++] = wct;
}