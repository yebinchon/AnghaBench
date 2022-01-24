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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  TD_REPORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ nbackp ; 
 scalar_t__ ncc ; 
 int /*<<< orphan*/  net ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  netibuf ; 
 int /*<<< orphan*/  netip ; 
 scalar_t__ nfrontp ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  pbackp ; 
 int /*<<< orphan*/  pfrontp ; 
 int /*<<< orphan*/  ptyobuf ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7()
{

    FUNC0(TD_REPORT, FUNC3("td: ttloop\r\n"));
    if (nfrontp - nbackp > 0) {
	FUNC2();
    }
    ncc = FUNC4(net, netibuf, sizeof netibuf);
    if (ncc < 0) {
	FUNC5(LOG_INFO, "ttloop:  read: %m");
	FUNC1(1);
    } else if (ncc == 0) {
	FUNC5(LOG_INFO, "ttloop:  peer died: %m");
	FUNC1(1);
    }
    FUNC0(TD_REPORT, FUNC3("td: ttloop read %d chars\r\n", ncc));
    netip = netibuf;
    FUNC6();			/* state machine */
    if (ncc > 0) {
	pfrontp = pbackp = ptyobuf;
	FUNC6();
    }
}