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
struct cfiscsi_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  sessions_cv; int /*<<< orphan*/  accept_cv; int /*<<< orphan*/  targets; int /*<<< orphan*/  sessions; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cfiscsi_data_wait_zone ; 
 struct cfiscsi_softc cfiscsi_softc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct cfiscsi_softc *softc = &cfiscsi_softc;

	if (!FUNC0(&softc->sessions) || !FUNC0(&softc->targets))
		return (EBUSY);

	FUNC3(cfiscsi_data_wait_zone);
#ifdef ICL_KERNEL_PROXY
	cv_destroy(&softc->accept_cv);
#endif
	FUNC1(&softc->sessions_cv);
	FUNC2(&softc->lock);
	return (0);
}