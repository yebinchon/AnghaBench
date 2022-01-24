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
struct cfiscsi_softc {int /*<<< orphan*/  targets; int /*<<< orphan*/  sessions; int /*<<< orphan*/  accept_cv; int /*<<< orphan*/  sessions_cv; int /*<<< orphan*/  lock; } ;
struct cfiscsi_data_wait {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  FUNC1 (struct cfiscsi_softc*,int) ; 
 int /*<<< orphan*/  cfiscsi_data_wait_zone ; 
 struct cfiscsi_softc cfiscsi_softc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void)
{
	struct cfiscsi_softc *softc;

	softc = &cfiscsi_softc;
	FUNC1(softc, sizeof(*softc));
	FUNC3(&softc->lock, "cfiscsi", NULL, MTX_DEF);

	FUNC2(&softc->sessions_cv, "cfiscsi_sessions");
#ifdef ICL_KERNEL_PROXY
	cv_init(&softc->accept_cv, "cfiscsi_accept");
#endif
	FUNC0(&softc->sessions);
	FUNC0(&softc->targets);

	cfiscsi_data_wait_zone = FUNC4("cfiscsi_data_wait",
	    sizeof(struct cfiscsi_data_wait), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);

	return (0);
}