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
struct pt_ild {scalar_t__ max_bytes; int disp_bytes; } ;

/* Variables and functions */
 int FUNC0 (struct pt_ild*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct pt_ild*,scalar_t__) ; 
 int pte_bad_insn ; 
 int pte_internal ; 
 scalar_t__ FUNC2 (struct pt_ild*) ; 

__attribute__((used)) static int FUNC3(struct pt_ild *ild, uint8_t length)
{
	uint8_t sib;

	if (!ild)
		return -pte_internal;

	if (ild->max_bytes <= length)
		return -pte_bad_insn;

	sib = FUNC1(ild, length);
	if ((sib & 0x07) == 0x05 && FUNC2(ild) == 0)
		ild->disp_bytes = 4;

	return FUNC0(ild, length + 1);
}