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
struct time_fixture {int /*<<< orphan*/  config; int /*<<< orphan*/  time; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_tma {int ctc; int fc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_packet_tma*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_bad_context ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct time_fixture *tfix)
{
	struct pt_packet_tma packet;
	int errcode;

	packet.ctc = 0xdc;
	packet.fc = 0xf;

	errcode = FUNC0(&tfix->time, &packet, &tfix->config);
	FUNC1(errcode, -pte_bad_context);

	return FUNC2();
}