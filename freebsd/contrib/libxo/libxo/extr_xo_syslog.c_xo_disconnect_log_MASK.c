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
 int /*<<< orphan*/  NOCONN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int xo_logfile ; 
 int /*<<< orphan*/  xo_status ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2 (void)
{
    if (&xo_syslog_close) {
	FUNC1();
	return;
    }

    /*
     * If the user closed the FD and opened another in the same slot,
     * that's their problem.  They should close it before calling on
     * system services.
     */
    if (xo_logfile != -1) {
        FUNC0(xo_logfile);
        xo_logfile = -1;
    }
    xo_status = NOCONN;            /* retry connect */
}