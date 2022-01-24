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
struct futex_waiter {struct futex_queue* fw_queue; } ;
struct futex_queue {int /*<<< orphan*/  fq_count; int /*<<< orphan*/  fq_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct futex_waiter* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct futex_waiter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_next ; 

__attribute__((used)) static void
FUNC4(struct futex_queue *fqfrom, struct futex_queue *fqto,
    unsigned int nwaiters)
{
	struct futex_waiter *fw;

	/* Move waiters to the target queue. */
	while (nwaiters-- > 0 && !FUNC0(&fqfrom->fq_list)) {
		fw = FUNC1(&fqfrom->fq_list);
		FUNC3(&fqfrom->fq_list, fw_next);
		--fqfrom->fq_count;

		fw->fw_queue = fqto;
		FUNC2(&fqto->fq_list, fw, fw_next);
		++fqto->fq_count;
	}
}