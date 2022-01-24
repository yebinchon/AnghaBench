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
struct thread {int td_state; int td_flags; char* td_lockname; char* td_wmesg; int td_oncpu; char* td_name; TYPE_1__* td_proc; void* td_wchan; void* td_blocked; int /*<<< orphan*/  td_tid; } ;
struct proc {int p_flag; } ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_2__ {int /*<<< orphan*/  p_comm; } ;

/* Variables and functions */
 scalar_t__ PRINT_ARGS ; 
 int P_SYSTEM ; 
 int TDF_SINTR ; 
#define  TDS_CAN_RUN 132 
#define  TDS_INACTIVE 131 
#define  TDS_INHIBITED 130 
#define  TDS_RUNNING 129 
#define  TDS_RUNQ 128 
 int /*<<< orphan*/  FUNC0 (struct thread volatile*) ; 
 scalar_t__ FUNC1 (struct thread volatile*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread volatile*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread volatile*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread volatile*) ; 
 scalar_t__ FUNC5 (struct thread volatile*) ; 
 scalar_t__ FUNC6 (struct thread volatile*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct proc volatile*) ; 
 scalar_t__ ps_mode ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC11(volatile struct proc *p, volatile struct thread *td, int all)
{
	char state[9], wprefix;
	const char *wmesg;
	void *wchan;
	
	if (all) {
		FUNC7("%6d                  ", td->td_tid);
		switch (td->td_state) {
		case TDS_RUNNING:
			FUNC9(state, sizeof(state), "Run");
			break;
		case TDS_RUNQ:
			FUNC9(state, sizeof(state), "RunQ");
			break;
		case TDS_CAN_RUN:
			FUNC9(state, sizeof(state), "CanRun");
			break;
		case TDS_INACTIVE:
			FUNC9(state, sizeof(state), "Inactv");
			break;
		case TDS_INHIBITED:
			state[0] = '\0';
			if (FUNC5(td))
				FUNC10(state, "L", sizeof(state));
			if (FUNC2(td)) {
				if (td->td_flags & TDF_SINTR)
					FUNC10(state, "S", sizeof(state));
				else
					FUNC10(state, "D", sizeof(state));
			}
			if (FUNC4(td))
				FUNC10(state, "W", sizeof(state));
			if (FUNC0(td))
				FUNC10(state, "I", sizeof(state));
			if (FUNC3(td))
				FUNC10(state, "s", sizeof(state));
			if (state[0] != '\0')
				break;
		default:
			FUNC9(state, sizeof(state), "???");
		}			
		FUNC7(" %-6.6s ", state);
	}
	wprefix = ' ';
	if (FUNC5(td)) {
		wprefix = '*';
		wmesg = td->td_lockname;
		wchan = td->td_blocked;
	} else if (FUNC6(td)) {
		wmesg = td->td_wmesg;
		wchan = td->td_wchan;
	} else if (FUNC1(td)) {
		FUNC9(state, sizeof(state), "CPU %d", td->td_oncpu);
		wmesg = state;
		wchan = NULL;
	} else {
		wmesg = "";
		wchan = NULL;
	}
	FUNC7("%c%-7.7s ", wprefix, wmesg);
	if (wchan == NULL)
#ifdef __LP64__
		FUNC7("%18s  ", "");
#else
		db_printf("%10s  ", "");
#endif
	else
		FUNC7("%p  ", wchan);
	if (p->p_flag & P_SYSTEM)
		FUNC7("[");
	if (td->td_name[0] != '\0')
		FUNC7("%s", td->td_name);
	else
		FUNC7("%s", td->td_proc->p_comm);
	if (p->p_flag & P_SYSTEM)
		FUNC7("]");
	if (ps_mode == PRINT_ARGS && all == 0) {
		FUNC7(" ");
		FUNC8(p);
	}
	FUNC7("\n");
}