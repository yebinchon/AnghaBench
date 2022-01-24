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
struct TYPE_6__ {int /*<<< orphan*/  refid; int /*<<< orphan*/  stratum; } ;
struct TYPE_5__ {TYPE_3__ p; } ;
struct TYPE_4__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHENTICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KOD_RATE ; 
 int /*<<< orphan*/  LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  MODE_SERVER ; 
 int /*<<< orphan*/  STRATUM_PKT_UNSPEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ testpkt ; 
 int /*<<< orphan*/  testsock ; 
 TYPE_1__ testspkt ; 

void
FUNC5(void)
{
	FUNC2(FUNC0(AUTHENTICATION));

	testpkt.p.stratum = STRATUM_PKT_UNSPEC;
	FUNC3(&testpkt.p.refid, "RATE", 4);

	FUNC1(KOD_RATE,
			  FUNC4(&testpkt.p, &testsock, LEN_PKT_NOMAC,
				      MODE_SERVER, &testspkt.p, "UnitTest"));
}