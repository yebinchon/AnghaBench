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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int vex; int rex_r; int rex_w; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {scalar_t__ max_bytes; int imm1_bytes; scalar_t__ map; TYPE_2__ u; } ;

/* Variables and functions */
 scalar_t__ PTI_MAP_3 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (struct pt_ild*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_ild*) ; 
 int FUNC3 (struct pt_ild*,scalar_t__) ; 
 int FUNC4 (struct pt_ild*,scalar_t__) ; 
 int pte_bad_insn ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC5(struct pt_ild *ild, uint8_t length, uint8_t rex)
{
	uint8_t max_bytes;
	uint8_t p1, p2, map;

	(void) rex;

	if (!ild)
		return -pte_internal;

	max_bytes = ild->max_bytes;

	/* Read the next byte to validate that this is indeed EVEX. */
	if (max_bytes <= (length + 1))
		return -pte_bad_insn;

	p1 = FUNC1(ild, length + 1);

	/* If p1[7:6] is not 11b in non-64-bit mode, this is BOUND, not EVEX. */
	if (!FUNC2(ild) && !FUNC0(p1, 0xc0, 0xc0))
		return FUNC3(ild, length);

	/* We need at least 5 bytes
	 * - 4 for the EVEX prefix and payload and
	 * - 1 for the opcode.
	 */
	if (max_bytes < (length + 5))
		return -pte_bad_insn;

	p2 = FUNC1(ild, length + 2);

	ild->u.s.vex = 1;
	if (p1 & 0x80)
		ild->u.s.rex_r = 1;
	if (p2 & 0x80)
		ild->u.s.rex_w = 1;

	map = p1 & 0x03;
	ild->map = map;

	if (map == PTI_MAP_3)
		ild->imm1_bytes = 1;

	/* Eat the EVEX. */
	length += 4;
	return FUNC4(ild, length);
}