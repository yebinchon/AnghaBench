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
struct hookproc {int /*<<< orphan*/  hp_comm; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 struct hookproc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hookproc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hookproc*) ; 
 int /*<<< orphan*/  hookprocs_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC11(pid_t pid, int status)
{
	struct hookproc *hp;

	FUNC7(&hookprocs_lock);
	hp = FUNC4(pid);
	if (hp == NULL) {
		FUNC8(&hookprocs_lock);
		FUNC9(1, "Unknown process pid=%u", pid);
		return;
	}
	FUNC6(hp);
	FUNC8(&hookprocs_lock);
	if (FUNC1(status) && FUNC0(status) == 0) {
		FUNC9(1, "Hook exited gracefully (pid=%u, cmd=[%s]).",
		    pid, hp->hp_comm);
	} else if (FUNC2(status)) {
		FUNC10("Hook was killed (pid=%u, signal=%d, cmd=[%s]).",
		    pid, FUNC3(status), hp->hp_comm);
	} else {
		FUNC10("Hook exited ungracefully (pid=%u, exitcode=%d, cmd=[%s]).",
		    pid, FUNC1(status) ? FUNC0(status) : -1,
		    hp->hp_comm);
	}
	FUNC5(hp);
}