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
struct TYPE_3__ {int vex; int rex_r; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {scalar_t__ max_bytes; int /*<<< orphan*/  map; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTI_MAP_1 ; 
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
	uint8_t p1;

	(void) rex;

	if (!ild)
		return -pte_internal;

	max_bytes = ild->max_bytes;

	/* Read the next byte to validate that this is indeed VEX. */
	if (max_bytes <= (length + 1))
		return -pte_bad_insn;

	p1 = FUNC1(ild, length + 1);

	/* If p1[7:6] is not 11b in non-64-bit mode, this is LDS, not VEX. */
	if (!FUNC2(ild) && !FUNC0(p1, 0xc0, 0xc0))
		return FUNC3(ild, length);

	/* We need at least 3 bytes
	 * - 2 for the VEX prefix and payload and
	 * - 1 for the opcode.
	 */
	if (max_bytes < (length + 3))
		return -pte_bad_insn;

	ild->u.s.vex = 1;
	if (p1 & 0x80)
		ild->u.s.rex_r = 1;

	ild->map = PTI_MAP_1;

	/* Eat the VEX. */
	length += 2;
	return FUNC4(ild, length);
}