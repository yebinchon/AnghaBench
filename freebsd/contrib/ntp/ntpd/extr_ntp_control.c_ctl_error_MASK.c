#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_int32 ;
typedef  int u_char ;
struct TYPE_2__ {int r_m_e_op; scalar_t__ count; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CTL_ERROR ; 
 scalar_t__ CTL_HEADER_LEN ; 
 int CTL_OP_MASK ; 
 scalar_t__ CTL_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  lcl_inter ; 
 int /*<<< orphan*/  numctlerrors ; 
 scalar_t__ res_authenticate ; 
 int /*<<< orphan*/  res_keyid ; 
 int res_opcode ; 
 int /*<<< orphan*/  rmt_addr ; 
 TYPE_1__ rpkt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,scalar_t__) ; 
 scalar_t__ sys_authenticate ; 

__attribute__((used)) static void
FUNC4(
	u_char errcode
	)
{
	size_t		maclen;

	numctlerrors++;
	FUNC0(3, ("sending control error %u\n", errcode));

	/*
	 * Fill in the fields. We assume rpkt.sequence and rpkt.associd
	 * have already been filled in.
	 */
	rpkt.r_m_e_op = (u_char)CTL_RESPONSE | CTL_ERROR |
			(res_opcode & CTL_OP_MASK);
	rpkt.status = FUNC2((u_short)(errcode << 8) & 0xff00);
	rpkt.count = 0;

	/*
	 * send packet and bump counters
	 */
	if (res_authenticate && sys_authenticate) {
		maclen = FUNC1(res_keyid, (u_int32 *)&rpkt,
				     CTL_HEADER_LEN);
		FUNC3(rmt_addr, lcl_inter, -2, (void *)&rpkt,
			CTL_HEADER_LEN + maclen);
	} else
		FUNC3(rmt_addr, lcl_inter, -3, (void *)&rpkt,
			CTL_HEADER_LEN);
}