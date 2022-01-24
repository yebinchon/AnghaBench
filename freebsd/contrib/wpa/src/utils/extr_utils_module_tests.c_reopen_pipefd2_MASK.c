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
struct test_eloop {int* pipefd2; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct test_eloop*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eloop_test_read_2_wrong ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC6(struct test_eloop *t)
{
	if (t->pipefd2[0] < 0) {
		FUNC5(MSG_INFO, "pipefd2 had been closed");
	} else {
		int res;

		FUNC5(MSG_INFO, "close pipefd2");
		FUNC2(t->pipefd2[0]);
		FUNC0(t->pipefd2[0]);
		t->pipefd2[0] = -1;
		FUNC0(t->pipefd2[1]);
		t->pipefd2[1] = -1;

		res = FUNC3(t->pipefd2);
		if (res < 0) {
			FUNC5(MSG_INFO, "pipe: %s", FUNC4(errno));
			t->pipefd2[0] = -1;
			t->pipefd2[1] = -1;
			return;
		}

		FUNC5(MSG_INFO,
			   "re-register pipefd2 with new sockets %d,%d",
			   t->pipefd2[0], t->pipefd2[1]);
		FUNC1(t->pipefd2[0], eloop_test_read_2_wrong,
					 t, NULL);
	}
}