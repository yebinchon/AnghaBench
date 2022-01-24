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
struct proc_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  WSTOPPED ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc_handle*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct proc_handle *phdl)
{
	int status;

	if (FUNC3(FUNC4(phdl), SIGSTOP) == -1) {
		FUNC0("kill %d", FUNC4(phdl));
		return (-1);
	} else if (FUNC5(FUNC4(phdl), &status, WSTOPPED) == -1) {
		FUNC0("waitpid %d", FUNC4(phdl));
		return (-1);
	} else if (!FUNC2(status)) {
		FUNC1("waitpid: unexpected status 0x%x", status);
		return (-1);
	}

	return (0);
}