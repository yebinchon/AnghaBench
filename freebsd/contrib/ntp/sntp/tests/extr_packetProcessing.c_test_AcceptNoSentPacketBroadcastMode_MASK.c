#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  li_vn_mode; } ;
struct TYPE_3__ {TYPE_2__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHENTICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEAP_NOWARNING ; 
 int /*<<< orphan*/  LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  MODE_BROADCAST ; 
 int /*<<< orphan*/  NTP_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ testpkt ; 
 int /*<<< orphan*/  testsock ; 

void
FUNC5(void)
{
	FUNC3(FUNC0(AUTHENTICATION));

	testpkt.p.li_vn_mode = FUNC1(LEAP_NOWARNING,
					      NTP_VERSION,
					      MODE_BROADCAST);

	FUNC2(LEN_PKT_NOMAC,
		  FUNC4(&testpkt.p, &testsock, LEN_PKT_NOMAC,
			      MODE_BROADCAST, NULL, "UnitTest"));
}