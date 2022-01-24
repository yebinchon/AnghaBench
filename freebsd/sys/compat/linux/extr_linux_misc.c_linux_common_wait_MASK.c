#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct __wrusage {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_pid; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  idtype_t ;
typedef  scalar_t__ id_t ;

/* Variables and functions */
 int /*<<< orphan*/  P_ALL ; 
 int /*<<< orphan*/  P_PGID ; 
 int /*<<< orphan*/  P_PID ; 
 scalar_t__ SIGTRAP ; 
 int WAIT_ANY ; 
 int WEXITED ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int WTRAPPED ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (int*,int*,int) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ ,scalar_t__,int*,int,struct __wrusage*,TYPE_1__*) ; 
 int FUNC8 (struct thread*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct thread *td, int pid, int *statusp,
    int options, struct __wrusage *wrup)
{
	siginfo_t siginfo;
	idtype_t idtype;
	id_t id;
	int error, status, tmpstat;

	if (pid == WAIT_ANY) {
		idtype = P_ALL;
		id = 0;
	} else if (pid < 0) {
		idtype = P_PGID;
		id = (id_t)-pid;
	} else {
		idtype = P_PID;
		id = (id_t)pid;
	}

	/*
	 * For backward compatibility we implicitly add flags WEXITED
	 * and WTRAPPED here.
	 */
	options |= WEXITED | WTRAPPED;
	error = FUNC7(td, idtype, id, &status, options, wrup, &siginfo);
	if (error)
		return (error);

	if (statusp) {
		tmpstat = status & 0xffff;
		if (FUNC1(tmpstat)) {
			tmpstat = (tmpstat & 0xffffff80) |
			    FUNC5(FUNC4(tmpstat));
		} else if (FUNC2(tmpstat)) {
			tmpstat = (tmpstat & 0xffff00ff) |
			    (FUNC5(FUNC3(tmpstat)) << 8);
#if defined(__amd64__) && !defined(COMPAT_LINUX32)
			if (FUNC3(status) == SIGTRAP) {
				tmpstat = FUNC8(td,
				    siginfo.si_pid, tmpstat);
			}
#endif
		} else if (FUNC0(tmpstat)) {
			tmpstat = 0xffff;
		}
		error = FUNC6(&tmpstat, statusp, sizeof(int));
	}

	return (error);
}