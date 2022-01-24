#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct pfioc_pooladdr {int r_action; scalar_t__ nr; int /*<<< orphan*/  addr; scalar_t__ ticket; scalar_t__ r_num; int /*<<< orphan*/  anchor; } ;
struct pf_pooladdr {int dummy; } ;
struct pf_pool {int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  pp ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETADDR ; 
 int /*<<< orphan*/  DIOCGETADDRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pf_pooladdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pf_pooladdr*,int) ; 
 struct pf_pooladdr* FUNC3 (int,int) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,struct pfioc_pooladdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pfioc_pooladdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(int dev, struct pf_pool *pool, u_int32_t nr,
    u_int32_t ticket, int r_action, char *anchorname)
{
	struct pfioc_pooladdr pp;
	struct pf_pooladdr *pa;
	u_int32_t pnr, mpnr;

	FUNC7(&pp, 0, sizeof(pp));
	FUNC6(pp.anchor, anchorname, sizeof(pp.anchor));
	pp.r_action = r_action;
	pp.r_num = nr;
	pp.ticket = ticket;
	if (FUNC5(dev, DIOCGETADDRS, &pp)) {
		FUNC8("DIOCGETADDRS");
		return (-1);
	}
	mpnr = pp.nr;
	FUNC0(&pool->list);
	for (pnr = 0; pnr < mpnr; ++pnr) {
		pp.nr = pnr;
		if (FUNC5(dev, DIOCGETADDR, &pp)) {
			FUNC8("DIOCGETADDR");
			return (-1);
		}
		pa = FUNC3(1, sizeof(struct pf_pooladdr));
		if (pa == NULL)
			FUNC4(1, "calloc");
		FUNC2(&pp.addr, pa, sizeof(struct pf_pooladdr));
		FUNC1(&pool->list, pa, entries);
	}

	return (0);
}