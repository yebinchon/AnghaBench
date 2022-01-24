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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct time_fixture {int /*<<< orphan*/  time; int /*<<< orphan*/  config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_tsc {int tsc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_packet_tsc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct time_fixture *tfix)
{
	struct pt_packet_tsc packet;
	uint64_t tsc;
	uint32_t lost_mtc, lost_cyc;
	int errcode;

	packet.tsc = 0xdedededeull;

	errcode = FUNC1(&tfix->time, &packet, &tfix->config);
	FUNC2(errcode, 0);

	errcode = FUNC0(&tsc, &lost_mtc, &lost_cyc, &tfix->time);
	FUNC2(errcode, 0);

	FUNC4(tsc, 0xdedededeull);
	FUNC4(lost_mtc, 0);
	FUNC4(lost_cyc, 0);

	return FUNC3();
}