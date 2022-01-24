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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 int TD_PTYDATA ; 
 int TD_REPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ pbackp ; 
 scalar_t__ pfrontp ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  pty ; 
 scalar_t__ ptyobuf ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void
FUNC5(void)
{
	int n;

	if ((n = pfrontp - pbackp) > 0) {
		FUNC0(TD_REPORT | TD_PTYDATA,
		    FUNC2("td: ptyflush %d chars\r\n", n));
		FUNC0(TD_PTYDATA, FUNC3("pd", pbackp, n));
		n = FUNC4(pty, pbackp, n);
	}
	if (n < 0) {
		if (errno == EWOULDBLOCK || errno == EINTR)
			return;
		FUNC1(0);
	}
	pbackp += n;
	if (pbackp == pfrontp)
		pbackp = pfrontp = ptyobuf;
}