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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fatal_want_message ; 
 scalar_t__ fatal_want_severity ; 
 int /*<<< orphan*/  logmsg ; 
 scalar_t__ logsev ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(int exitcode)
{
	if (logsev != fatal_want_severity ||
	    !logmsg ||
	    FUNC1(logmsg, fatal_want_message))
		FUNC0(0);
	else
		FUNC0(exitcode);
}