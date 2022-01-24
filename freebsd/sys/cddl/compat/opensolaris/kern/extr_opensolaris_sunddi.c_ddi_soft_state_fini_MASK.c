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
struct ddi_soft_state_item {int ssi_item; } ;
struct ddi_soft_state {int /*<<< orphan*/  ss_lock; int /*<<< orphan*/  ss_list; } ;

/* Variables and functions */
 struct ddi_soft_state_item* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ddi_soft_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ddi_soft_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(void **statep)
{
	struct ddi_soft_state *ss = *statep;
	struct ddi_soft_state_item *itemp;
	int item;

	FUNC4(&ss->ss_lock);
	while ((itemp = FUNC0(&ss->ss_list)) != NULL) {
		item = itemp->ssi_item;
		FUNC1(ss, item);
	}
	FUNC5(&ss->ss_lock);
	FUNC3(&ss->ss_lock);
	FUNC2(ss, sizeof(*ss));

	*statep = NULL;
}