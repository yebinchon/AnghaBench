#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned long l_ui; unsigned long l_uf; } ;
typedef  TYPE_3__ l_fp ;
struct TYPE_8__ {int /*<<< orphan*/  org; int /*<<< orphan*/  refid; int /*<<< orphan*/  stratum; int /*<<< orphan*/  li_vn_mode; } ;
struct TYPE_11__ {TYPE_2__ p; } ;
struct TYPE_7__ {int /*<<< orphan*/  xmt; } ;
struct TYPE_10__ {TYPE_1__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LEAP_NOWARNING ; 
 int /*<<< orphan*/  MODE_SERVER ; 
 int /*<<< orphan*/  NTP_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRATUM_REFCLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int restoreKeyDb ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_5__ testpkt ; 
 TYPE_4__ testspkt ; 

void
FUNC4(void)
{

	FUNC3();
	restoreKeyDb = false;

	/* Initialize the test packet and socket,
	 * so they contain at least some valid data.
	 */
	testpkt.p.li_vn_mode = FUNC1(LEAP_NOWARNING, NTP_VERSION,
										MODE_SERVER);
	testpkt.p.stratum = STRATUM_REFCLOCK;
	FUNC2(&testpkt.p.refid, "GPS\0", 4);

	/* Set the origin timestamp of the received packet to the
	 * same value as the transmit timestamp of the sent packet.
	 */
	l_fp tmp;
	tmp.l_ui = 1000UL;
	tmp.l_uf = 0UL;

	FUNC0(&tmp, &testpkt.p.org);
	FUNC0(&tmp, &testspkt.p.xmt);
}