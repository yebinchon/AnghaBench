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
typedef  int /*<<< orphan*/  uid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ logged_in ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ transflag ; 
 int /*<<< orphan*/  ttyline ; 
 scalar_t__ urgflag ; 

void
FUNC5(int status)
{
    transflag = 0;
    urgflag = 0;
    if (logged_in) {
#if KRB5
	cond_kdestroy();
#endif
	FUNC4((uid_t)0); /* No need to check, we call exit() below */
	FUNC3(ttyline, "", "");
    }
    /* beware of flushing buffers after a SIGPIPE */
#ifdef XXX
    exit(status);
#else
    FUNC0(status);
#endif
}