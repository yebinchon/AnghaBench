#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  li_vn_mode; } ;
struct TYPE_5__ {TYPE_3__ p; } ;
struct TYPE_4__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHENTICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEAP_NOWARNING ; 
 int LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  MODE_CLIENT ; 
 int /*<<< orphan*/  MODE_SERVER ; 
 scalar_t__ NTP_OLDVERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVER_UNUSEABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ testpkt ; 
 int /*<<< orphan*/  testsock ; 
 TYPE_1__ testspkt ; 

void
FUNC7(void)
{
	FUNC4(FUNC0(AUTHENTICATION));

	testpkt.p.li_vn_mode = FUNC1(LEAP_NOWARNING,
					      NTP_OLDVERSION - 1,
					      MODE_CLIENT);
	FUNC5(FUNC2(testpkt.p.li_vn_mode) < NTP_OLDVERSION);

	int pkt_len = LEN_PKT_NOMAC;
	
	FUNC3(SERVER_UNUSEABLE,
			  FUNC6(&testpkt.p, &testsock, pkt_len,
				      MODE_SERVER, &testspkt.p, "UnitTest"));
}