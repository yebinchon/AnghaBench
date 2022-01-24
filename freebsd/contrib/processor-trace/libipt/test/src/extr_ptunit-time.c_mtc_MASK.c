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
struct time_fixture {int /*<<< orphan*/  time; int /*<<< orphan*/  config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_mtc {int ctc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_packet_mtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_no_time ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct time_fixture *tfix)
{
	struct pt_packet_mtc packet;
	uint64_t tsc;
	int errcode;

	packet.ctc = 0xdc;

	errcode = FUNC1(&tfix->time, &packet, &tfix->config);
	FUNC2(errcode, 0);

	errcode = FUNC0(&tsc, NULL, NULL, &tfix->time);
	FUNC2(errcode, -pte_no_time);

	return FUNC3();
}