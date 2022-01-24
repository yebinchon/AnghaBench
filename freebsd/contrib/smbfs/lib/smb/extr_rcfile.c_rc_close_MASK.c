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
struct rcsection {int dummy; } ;
struct rcfile {struct rcfile* rf_name; int /*<<< orphan*/  rf_sect; int /*<<< orphan*/  rf_f; } ;

/* Variables and functions */
 struct rcsection* FUNC0 (int /*<<< orphan*/ *) ; 
 struct rcsection* FUNC1 (struct rcsection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rcfile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rcfile*) ; 
 int /*<<< orphan*/  pf_head ; 
 int /*<<< orphan*/  FUNC5 (struct rcfile*,struct rcsection*) ; 
 int /*<<< orphan*/  rcfile ; 
 int /*<<< orphan*/  rf_next ; 
 int /*<<< orphan*/  rs_next ; 

int
FUNC6(struct rcfile *rcp)
{
	struct rcsection *p, *n;

	FUNC3(rcp->rf_f);
	for(p = FUNC0(&rcp->rf_sect); p;) {
		n = p;
		p = FUNC1(p,rs_next);
		FUNC5(rcp, n);
	}
	FUNC4(rcp->rf_name);
	FUNC2(&pf_head, rcp, rcfile, rf_next);
	FUNC4(rcp);
	return 0;
}