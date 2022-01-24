#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct khash {int k_state; scalar_t__ k_keep; struct khash* k_next; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;

/* Variables and functions */
 int KHASH_SIZE ; 
 int KS_ADD ; 
 int KS_CHANGE ; 
 int KS_DELETE ; 
 int KS_DEL_ADD ; 
 int KS_DYNAMIC ; 
 int KS_GATEWAY ; 
 int KS_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  RTF_GATEWAY ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  RTM_CHANGE ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  age_timer ; 
 int /*<<< orphan*/  FUNC2 (struct khash*) ; 
 int /*<<< orphan*/  FUNC3 (struct khash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct khash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kern_out ; 
 struct khash** khash_bins ; 
 int /*<<< orphan*/  need_kern ; 
 TYPE_1__ now ; 
 int /*<<< orphan*/  rhead ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  walk_kern ; 

__attribute__((used)) static void
FUNC6(void)
{
	int i;
	struct khash *k, **pk;


	need_kern = age_timer;

	/* Walk daemon table, updating the copy of the kernel table.
	 */
	(void)FUNC5(rhead, walk_kern, 0);
	FUNC1(0,0,kern_out);

	for (i = 0; i < KHASH_SIZE; i++) {
		for (pk = &khash_bins[i]; (k = *pk) != NULL; ) {
			/* Do not touch static routes */
			if (k->k_state & KS_STATIC) {
				FUNC3(k,0);
				pk = &k->k_next;
				continue;
			}

			/* check hold on routes deleted by the operator */
			if (k->k_keep > now.tv_sec) {
				/* ensure we check when the hold is over */
				FUNC0(need_kern, k->k_keep);
				/* mark for the next cycle */
				k->k_state |= KS_DELETE;
				pk = &k->k_next;
				continue;
			}

			if ((k->k_state & KS_DELETE)
			    && !(k->k_state & KS_DYNAMIC)) {
				FUNC4(k, RTM_DELETE, 0);
				*pk = k->k_next;
				FUNC2(k);
				continue;
			}

			if (k->k_state & KS_DEL_ADD)
				FUNC4(k, RTM_DELETE, 0);

			if (k->k_state & KS_ADD) {
				FUNC4(k, RTM_ADD,
					   ((0 != (k->k_state & (KS_GATEWAY
							| KS_DYNAMIC)))
					    ? RTF_GATEWAY : 0));
			} else if (k->k_state & KS_CHANGE) {
				FUNC4(k,  RTM_CHANGE,
					   ((0 != (k->k_state & (KS_GATEWAY
							| KS_DYNAMIC)))
					    ? RTF_GATEWAY : 0));
			}
			k->k_state &= ~(KS_ADD|KS_CHANGE|KS_DEL_ADD);

			/* Mark this route to be deleted in the next cycle.
			 * This deletes routes that disappear from the
			 * daemon table, since the normal aging code
			 * will clear the bit for routes that have not
			 * disappeared from the daemon table.
			 */
			k->k_state |= KS_DELETE;
			pk = &k->k_next;
		}
	}
}