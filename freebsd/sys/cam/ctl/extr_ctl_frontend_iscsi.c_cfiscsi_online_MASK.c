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
struct cfiscsi_target {int ct_online; struct cfiscsi_softc* ct_softc; } ;
struct cfiscsi_softc {int /*<<< orphan*/ * listener; int /*<<< orphan*/  lock; int /*<<< orphan*/  online; } ;

/* Variables and functions */
 int /*<<< orphan*/  cfiscsi_accept ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct cfiscsi_softc *softc;
	struct cfiscsi_target *ct;
	int online;

	ct = (struct cfiscsi_target *)arg;
	softc = ct->ct_softc;

	FUNC2(&softc->lock);
	if (ct->ct_online) {
		FUNC3(&softc->lock);
		return;
	}
	ct->ct_online = 1;
	online = softc->online++;
	FUNC3(&softc->lock);
	if (online > 0)
		return;

#ifdef ICL_KERNEL_PROXY
	if (softc->listener != NULL)
		icl_listen_free(softc->listener);
	softc->listener = icl_listen_new(cfiscsi_accept);
#endif
}