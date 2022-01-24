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
struct cfiscsi_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  sessions; scalar_t__ last_session_id; } ;
struct cfiscsi_session {int cs_ctl_initid; int cs_handoff_in_progress; int /*<<< orphan*/  cs_callout; scalar_t__ cs_id; TYPE_1__* cs_conn; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  cs_login_cv; int /*<<< orphan*/  cs_maintenance_cv; int /*<<< orphan*/  cs_waiting_for_data_out; int /*<<< orphan*/  cs_outstanding_ctl_pdus; } ;
struct TYPE_2__ {struct cfiscsi_session* ic_prv0; int /*<<< orphan*/  ic_error; int /*<<< orphan*/  ic_receive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_CFISCSI ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cfiscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cfiscsi_session*) ; 
 int /*<<< orphan*/  cfiscsi_callout ; 
 int /*<<< orphan*/  cfiscsi_error_callback ; 
 int /*<<< orphan*/  cfiscsi_maintenance_thread ; 
 int /*<<< orphan*/  cfiscsi_receive_callback ; 
 int /*<<< orphan*/  cs_next ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfiscsi_session*,int /*<<< orphan*/ ) ; 
 int hz ; 
 TYPE_1__* FUNC8 (char const*,int,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct cfiscsi_session*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct cfiscsi_session* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfiscsi_session *
FUNC15(struct cfiscsi_softc *softc, const char *offload)
{
	struct cfiscsi_session *cs;
	int error;

	cs = FUNC10(sizeof(*cs), M_CFISCSI, M_NOWAIT | M_ZERO);
	if (cs == NULL) {
		FUNC1("malloc failed");
		return (NULL);
	}
	cs->cs_ctl_initid = -1;

	FUNC14(&cs->cs_outstanding_ctl_pdus, 0);
	FUNC2(&cs->cs_waiting_for_data_out);
	FUNC11(&cs->cs_lock, "cfiscsi_lock", NULL, MTX_DEF);
	FUNC6(&cs->cs_maintenance_cv, "cfiscsi_mt");
#ifdef ICL_KERNEL_PROXY
	cv_init(&cs->cs_login_cv, "cfiscsi_login");
#endif

	/*
	 * The purpose of this is to avoid racing with session shutdown.
	 * Otherwise we could have the maintenance thread call icl_conn_close()
	 * before we call icl_conn_handoff().
	 */
	cs->cs_handoff_in_progress = true;

	cs->cs_conn = FUNC8(offload, false, "cfiscsi", &cs->cs_lock);
	if (cs->cs_conn == NULL) {
		FUNC7(cs, M_CFISCSI);
		return (NULL);
	}
	cs->cs_conn->ic_receive = cfiscsi_receive_callback;
	cs->cs_conn->ic_error = cfiscsi_error_callback;
	cs->cs_conn->ic_prv0 = cs;

	error = FUNC9(cfiscsi_maintenance_thread, cs, NULL, NULL, 0, 0, "cfiscsimt");
	if (error != 0) {
		FUNC0(cs, "kthread_add(9) failed with error %d", error);
		FUNC7(cs, M_CFISCSI);
		return (NULL);
	}

	FUNC12(&softc->lock);
	cs->cs_id = ++softc->last_session_id;
	FUNC3(&softc->sessions, cs, cs_next);
	FUNC13(&softc->lock);

	/*
	 * Start pinging the initiator.
	 */
	FUNC4(&cs->cs_callout, 1);
	FUNC5(&cs->cs_callout, 1 * hz, cfiscsi_callout, cs);

	return (cs);
}