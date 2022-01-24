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
struct TYPE_7__ {unsigned long l_ui; unsigned long l_uf; } ;
typedef  TYPE_1__ l_fp ;
struct TYPE_11__ {int /*<<< orphan*/  xmt; } ;
struct TYPE_10__ {int /*<<< orphan*/  org; } ;
struct TYPE_9__ {TYPE_4__ p; } ;
struct TYPE_8__ {TYPE_5__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHENTICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  MODE_SERVER ; 
 int /*<<< orphan*/  PACKET_UNUSEABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,char*) ; 
 TYPE_3__ testpkt ; 
 int /*<<< orphan*/  testsock ; 
 TYPE_2__ testspkt ; 

void
FUNC5(void)
{
	FUNC3(FUNC0(AUTHENTICATION));

	l_fp tmp;
	tmp.l_ui = 1000UL;
	tmp.l_uf = 0UL;
	FUNC1(&tmp, &testpkt.p.org);

	tmp.l_ui = 2000UL;
	tmp.l_uf = 0UL;
	FUNC1(&tmp, &testspkt.p.xmt);

	FUNC2(PACKET_UNUSEABLE,
			  FUNC4(&testpkt.p, &testsock, LEN_PKT_NOMAC,
				      MODE_SERVER, &testspkt.p, "UnitTest"));
}