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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pf_pooladdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 

void
FUNC3(struct pf_pool *src, struct pf_pool *dst)
{
	struct pf_pooladdr *pa;

	while ((pa = FUNC0(&src->list)) != NULL) {
		FUNC2(&src->list, pa, entries);
		FUNC1(&dst->list, pa, entries);
	}
}