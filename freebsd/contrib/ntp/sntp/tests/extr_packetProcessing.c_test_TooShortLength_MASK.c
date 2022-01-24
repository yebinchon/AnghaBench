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
struct TYPE_4__ {int /*<<< orphan*/  p; } ;
struct TYPE_3__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 scalar_t__ LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  MODE_BROADCAST ; 
 int /*<<< orphan*/  MODE_SERVER ; 
 int /*<<< orphan*/  PACKET_UNUSEABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ testpkt ; 
 int /*<<< orphan*/  testsock ; 
 TYPE_1__ testspkt ; 

void
FUNC2(void)
{
	FUNC0(PACKET_UNUSEABLE,
			  FUNC1(&testpkt.p, &testsock, LEN_PKT_NOMAC - 1,
				      MODE_SERVER, &testspkt.p, "UnitTest"));
	FUNC0(PACKET_UNUSEABLE,
			  FUNC1(&testpkt.p, &testsock, LEN_PKT_NOMAC - 1,
				      MODE_BROADCAST, &testspkt.p, "UnitTest"));
}