#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parse {TYPE_1__* g; } ;
typedef  int /*<<< orphan*/  cset ;
struct TYPE_2__ {scalar_t__ ncsets; int /*<<< orphan*/ * sets; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static cset *
FUNC3(struct parse *p)
{
	cset *cs, *ncs;

	ncs = FUNC2(p->g->sets, p->g->ncsets + 1, sizeof(*ncs));
	if (ncs == NULL) {
		FUNC0(REG_ESPACE);
		return (NULL);
	}
	p->g->sets = ncs;
	cs = &p->g->sets[p->g->ncsets++];
	FUNC1(cs, 0, sizeof(*cs));

	return(cs);
}