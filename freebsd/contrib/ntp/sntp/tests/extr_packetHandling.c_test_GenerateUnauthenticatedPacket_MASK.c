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
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct pkt {int /*<<< orphan*/  xmt; int /*<<< orphan*/  ppoll; int /*<<< orphan*/  stratum; int /*<<< orphan*/  li_vn_mode; } ;
typedef  int /*<<< orphan*/  l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ JAN_1970 ; 
 int LEAP_NOTINSYNC ; 
 int LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MODE_CLIENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NTP_VERSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int STRATUM_UNSPEC ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pkt*,struct timeval*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC11(void)
{
	struct pkt	testpkt;
	struct timeval	xmt;
	l_fp		expected_xmt, actual_xmt;

	FUNC0(&xmt, NULL);
	xmt.tv_sec += JAN_1970;

	FUNC7(LEN_PKT_NOMAC,
			  FUNC10(&testpkt, &xmt, 0, NULL));

	FUNC7(LEAP_NOTINSYNC, FUNC3(testpkt.li_vn_mode));
	FUNC7(NTP_VERSION, FUNC6(testpkt.li_vn_mode));
	FUNC7(MODE_CLIENT, FUNC4(testpkt.li_vn_mode));

	FUNC7(STRATUM_UNSPEC, FUNC5(testpkt.stratum));
	FUNC7(8, testpkt.ppoll);

	FUNC9(&xmt, &expected_xmt);
	FUNC2(&testpkt.xmt, &actual_xmt);
	FUNC8(FUNC1(expected_xmt, actual_xmt));
}