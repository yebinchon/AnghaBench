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
struct rcsection {struct rcsection* rs_name; int /*<<< orphan*/  rs_keys; } ;
struct rckey {int dummy; } ;
struct rcfile {int /*<<< orphan*/  rf_sect; } ;

/* Variables and functions */
 struct rckey* FUNC0 (int /*<<< orphan*/ *) ; 
 struct rckey* FUNC1 (struct rckey*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rcsection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rcsection*) ; 
 int /*<<< orphan*/  FUNC4 (struct rckey*) ; 
 int /*<<< orphan*/  rcsection ; 
 int /*<<< orphan*/  rk_next ; 
 int /*<<< orphan*/  rs_next ; 

__attribute__((used)) static int
FUNC5(struct rcfile *rcp, struct rcsection *rsp)
{
	struct rckey *p,*n;

	FUNC2(&rcp->rf_sect, rsp, rcsection, rs_next);
	for(p = FUNC0(&rsp->rs_keys);p;) {
		n = p;
		p = FUNC1(p,rk_next);
		FUNC4(n);
	}
	FUNC3(rsp->rs_name);
	FUNC3(rsp);
	return 0;
}