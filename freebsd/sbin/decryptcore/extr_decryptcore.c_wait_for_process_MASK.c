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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int WEXITED ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int WUNTRACED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int
FUNC4(pid_t pid)
{
	int status;

	if (FUNC3(pid, &status, WUNTRACED | WEXITED) == -1) {
		FUNC2(LOG_ERR, "Unable to wait for a child process");
		return (1);
	}

	if (FUNC1(status))
		return (FUNC0(status));

	return (1);
}