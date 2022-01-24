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
typedef  scalar_t__ uint8_t ;
struct pt_ild {scalar_t__ max_bytes; int /*<<< orphan*/  nominal_opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_ild*,scalar_t__) ; 
 int FUNC1 (struct pt_ild*,scalar_t__) ; 
 int pte_bad_insn ; 
 int pte_internal ; 

__attribute__((used)) static inline int FUNC2(struct pt_ild *ild, uint8_t length)
{
	if (!ild)
		return -pte_internal;

	if (ild->max_bytes <= length)
		return -pte_bad_insn;

	ild->nominal_opcode = FUNC0(ild, length);

	return FUNC1(ild, length + 1);
}