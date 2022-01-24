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
struct pf_pooladdr {int dummy; } ;
struct pf_pool {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 struct pf_pooladdr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pf_pooladdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC2 (struct pf_pooladdr*) ; 

void
FUNC3(struct pf_pool *pool)
{
	struct pf_pooladdr *pa;

	while ((pa = FUNC0(&pool->list)) != NULL) {
		FUNC1(&pool->list, pa, entries);
		FUNC2(pa);
	}
}