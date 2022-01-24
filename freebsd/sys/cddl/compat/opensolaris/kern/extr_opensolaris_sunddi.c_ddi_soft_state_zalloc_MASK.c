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
struct ddi_soft_state_item {int ssi_item; struct ddi_soft_state_item* ssi_data; } ;
struct ddi_soft_state {int ss_size; int /*<<< orphan*/  ss_lock; int /*<<< orphan*/  ss_list; } ;

/* Variables and functions */
 int DDI_FAILURE ; 
 int DDI_SUCCESS ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ddi_soft_state_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct ddi_soft_state*,int) ; 
 struct ddi_soft_state_item* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ddi_soft_state_item*,int) ; 
 struct ddi_soft_state_item* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssi_next ; 

int
FUNC7(void *state, int item)
{
	struct ddi_soft_state *ss = state;
	struct ddi_soft_state_item *itemp;

	itemp = FUNC2(sizeof(*itemp), KM_SLEEP);
	itemp->ssi_item = item;
	itemp->ssi_data = FUNC4(ss->ss_size, KM_SLEEP);

	FUNC5(&ss->ss_lock);
	if (FUNC1(ss, item) != NULL) {
		FUNC6(&ss->ss_lock);
		FUNC3(itemp->ssi_data, ss->ss_size);
		FUNC3(itemp, sizeof(*itemp));
		return (DDI_FAILURE);
	}
	FUNC0(&ss->ss_list, itemp, ssi_next);
	FUNC6(&ss->ss_lock);
	return (DDI_SUCCESS);
}