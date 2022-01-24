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
typedef  scalar_t__ ub_thread_type ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

void FUNC4(ub_thread_type thread)
{
	int status = 0;
	if(FUNC3((pid_t)thread, &status, 0) == -1)
		FUNC0("waitpid(%d): %s", (int)thread, FUNC2(errno));
	if(status != 0)
		FUNC1("process %d abnormal exit with status %d",
			(int)thread, status);
}