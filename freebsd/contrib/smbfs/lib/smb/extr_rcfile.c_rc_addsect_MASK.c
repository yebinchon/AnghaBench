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
struct rcsection {int /*<<< orphan*/  rs_keys; int /*<<< orphan*/  rs_name; } ;
struct rcfile {int /*<<< orphan*/  rf_sect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rcsection*,int /*<<< orphan*/ ) ; 
 struct rcsection* FUNC2 (int) ; 
 struct rcsection* FUNC3 (struct rcfile*,char const*) ; 
 int /*<<< orphan*/  rs_next ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static struct rcsection *
FUNC5(struct rcfile *rcp, const char *sectname)
{
	struct rcsection *p;

	p = FUNC3(rcp, sectname);
	if (p) return p;
	p = FUNC2(sizeof(*p));
	if (!p) return NULL;
	p->rs_name = FUNC4(sectname);
	FUNC0(&p->rs_keys);
	FUNC1(&rcp->rf_sect, p, rs_next);
	return p;
}