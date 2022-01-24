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
struct time_fixture {int /*<<< orphan*/  time; int /*<<< orphan*/  config; int /*<<< orphan*/  tcal; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_cyc {int value; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct pt_packet_cyc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pte_no_time ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct time_fixture *tfix)
{
	struct pt_packet_cyc packet;
	uint64_t fcr, tsc;
	int errcode;

	errcode = FUNC0(&fcr, &tfix->tcal);
	FUNC3(errcode, 0);

	packet.value = 0xdc;

	errcode = FUNC2(&tfix->time, &packet, &tfix->config, fcr);
	FUNC3(errcode, 0);

	errcode = FUNC1(&tsc, NULL, NULL, &tfix->time);
	FUNC3(errcode, -pte_no_time);

	return FUNC4();
}