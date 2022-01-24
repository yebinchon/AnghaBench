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
struct test_eloop {int magic; int close_in_timeout; int /*<<< orphan*/ * pipefd2; int /*<<< orphan*/ * pipefd1; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct test_eloop*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct test_eloop*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eloop_test_cb ; 
 int /*<<< orphan*/  eloop_test_read_1 ; 
 int /*<<< orphan*/  eloop_test_read_2 ; 
 int /*<<< orphan*/  eloop_test_timeout ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct test_eloop*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct test_eloop* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC10(int close_in_timeout)
{
	struct test_eloop *t;
	int res;

	t = FUNC5(sizeof(*t));
	if (!t)
		return;
	t->magic = 0x12345678;
	t->close_in_timeout = close_in_timeout;

	FUNC8(MSG_INFO, "starting eloop tests (%p) (close_in_timeout=%d)",
		   t, close_in_timeout);

	res = FUNC6(t->pipefd1);
	if (res < 0) {
		FUNC8(MSG_INFO, "pipe: %s", FUNC7(errno));
		FUNC3(t);
		return;
	}

	res = FUNC6(t->pipefd2);
	if (res < 0) {
		FUNC8(MSG_INFO, "pipe: %s", FUNC7(errno));
		FUNC0(t->pipefd1[0]);
		FUNC0(t->pipefd1[1]);
		FUNC3(t);
		return;
	}

	FUNC8(MSG_INFO, "pipe fds: %d,%d %d,%d",
		   t->pipefd1[0], t->pipefd1[1],
		   t->pipefd2[0], t->pipefd2[1]);

	FUNC1(t->pipefd1[0], eloop_test_read_1, t, NULL);
	FUNC1(t->pipefd2[0], eloop_test_read_2, t, NULL);
	FUNC2(0, 0, eloop_test_cb, t, NULL);
	FUNC2(0, 200000, eloop_test_timeout, t, NULL);

	if (FUNC9(t->pipefd1[1], "HELLO", 5) < 0)
		FUNC8(MSG_INFO, "write: %s", FUNC7(errno));
	if (FUNC9(t->pipefd2[1], "TEST", 4) < 0)
		FUNC8(MSG_INFO, "write: %s", FUNC7(errno));
	FUNC4(0, 50000);
	FUNC8(MSG_INFO, "waiting for eloop callbacks");
}