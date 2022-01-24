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

/* Variables and functions */
 int ERR ; 
 int OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ret_err ; 
 int /*<<< orphan*/  ret_ok ; 

void
FUNC2(int status)
{
	if (status == ERR)
		FUNC1(ret_err);
	else if (status == OK)
		FUNC1(ret_ok);
	else
		FUNC0("INVALID_RETURN");
}