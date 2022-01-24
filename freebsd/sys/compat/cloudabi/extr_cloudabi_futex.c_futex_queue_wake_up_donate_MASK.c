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
struct futex_waiter {int fw_locked; int /*<<< orphan*/  fw_donated; int /*<<< orphan*/  fw_wait; int /*<<< orphan*/ * fw_queue; } ;
struct futex_queue {int /*<<< orphan*/  fq_count; int /*<<< orphan*/  fq_list; } ;

/* Variables and functions */
 struct futex_waiter* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct futex_queue*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  fw_next ; 

__attribute__((used)) static void
FUNC4(struct futex_queue *fq, unsigned int nwaiters)
{
	struct futex_waiter *fw;

	fw = FUNC0(&fq->fq_list);
	if (fw == NULL)
		return;
	fw->fw_locked = false;
	fw->fw_queue = NULL;
	FUNC2(&fw->fw_wait);

	FUNC1(&fq->fq_list, fw_next);
	--fq->fq_count;
	FUNC3(fq, &fw->fw_donated, nwaiters);
}