#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_4__ {int /*<<< orphan*/ * tcache; struct TYPE_4__* next; } ;
typedef  TYPE_1__ tcaches_t ;
typedef  int /*<<< orphan*/  tcache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* tcaches ; 
 TYPE_1__* tcaches_avail ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcaches_mtx ; 
 size_t tcaches_past ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC7(tsd_t *tsd, unsigned *r_ind) {
	FUNC6(FUNC5(FUNC4(tsd)), 0);

	bool err;

	if (FUNC3(tsd)) {
		err = true;
		goto label_return;
	}

	tcache_t *tcache = FUNC2(tsd);
	if (tcache == NULL) {
		err = true;
		goto label_return;
	}

	tcaches_t *elm;
	FUNC0(FUNC4(tsd), &tcaches_mtx);
	if (tcaches_avail != NULL) {
		elm = tcaches_avail;
		tcaches_avail = tcaches_avail->next;
		elm->tcache = tcache;
		*r_ind = (unsigned)(elm - tcaches);
	} else {
		elm = &tcaches[tcaches_past];
		elm->tcache = tcache;
		*r_ind = tcaches_past;
		tcaches_past++;
	}
	FUNC1(FUNC4(tsd), &tcaches_mtx);

	err = false;
label_return:
	FUNC6(FUNC5(FUNC4(tsd)), 0);
	return err;
}