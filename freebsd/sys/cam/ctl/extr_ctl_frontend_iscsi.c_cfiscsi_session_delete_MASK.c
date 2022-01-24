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
struct cfiscsi_softc {int /*<<< orphan*/  sessions_cv; int /*<<< orphan*/  lock; int /*<<< orphan*/  sessions; } ;
struct cfiscsi_session {scalar_t__ cs_outstanding_ctl_pdus; int /*<<< orphan*/  cs_conn; int /*<<< orphan*/ * cs_target; int /*<<< orphan*/  cs_waiting_for_data_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_CFISCSI ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cfiscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cfiscsi_session*) ; 
 struct cfiscsi_softc cfiscsi_softc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cs_next ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cfiscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct cfiscsi_session *cs)
{
	struct cfiscsi_softc *softc;

	softc = &cfiscsi_softc;

	FUNC0(cs->cs_outstanding_ctl_pdus == 0,
	    ("destroying session with outstanding CTL pdus"));
	FUNC0(FUNC1(&cs->cs_waiting_for_data_out),
	    ("destroying session with non-empty queue"));

	FUNC9(&softc->lock);
	FUNC2(&softc->sessions, cs, cs_next);
	FUNC10(&softc->lock);

	FUNC3(cs);
	if (cs->cs_target != NULL)
		FUNC4(cs->cs_target);
	FUNC7(cs->cs_conn);
	FUNC8(cs->cs_conn);
	FUNC6(cs, M_CFISCSI);
	FUNC5(&softc->sessions_cv);
}