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
struct ctl_softc {int /*<<< orphan*/ * lun_thread; int /*<<< orphan*/  ctl_lock; int /*<<< orphan*/  pending_lun_queue; int /*<<< orphan*/  shutdown; } ;
struct ctl_be_lun {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PDROP ; 
 scalar_t__ PUSER ; 
 struct ctl_be_lun* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct ctl_softc *softc = (struct ctl_softc *)arg;
	struct ctl_be_lun *be_lun;

	FUNC0(("ctl_lun_thread starting\n"));
	FUNC9(curthread);
	FUNC8(curthread, PUSER - 1);
	FUNC10(curthread);

	while (!softc->shutdown) {
		FUNC5(&softc->ctl_lock);
		be_lun = FUNC1(&softc->pending_lun_queue);
		if (be_lun != NULL) {
			FUNC2(&softc->pending_lun_queue, links);
			FUNC7(&softc->ctl_lock);
			FUNC3(be_lun);
			continue;
		}

		/* Sleep until we have something to do. */
		FUNC6(&softc->pending_lun_queue, &softc->ctl_lock,
		    PDROP, "-", 0);
	}
	softc->lun_thread = NULL;
	FUNC4();
}