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
typedef  int /*<<< orphan*/  uint32_t ;
struct time_fixture {int /*<<< orphan*/  time; int /*<<< orphan*/  config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_cbr {int ratio; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_packet_cbr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct time_fixture *tfix)
{
	struct pt_packet_cbr packet;
	uint32_t cbr;
	int errcode;

	packet.ratio = 0x38;

	errcode = FUNC1(&tfix->time, &packet, &tfix->config);
	FUNC2(errcode, 0);

	errcode = FUNC0(&cbr, &tfix->time);
	FUNC2(errcode, 0);

	FUNC4(cbr, 0x38);

	return FUNC3();
}