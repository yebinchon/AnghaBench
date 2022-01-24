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
struct pt_ild {scalar_t__ disp_bytes; scalar_t__ max_bytes; scalar_t__ disp_pos; } ;

/* Variables and functions */
 int FUNC0 (struct pt_ild*) ; 
 int FUNC1 (struct pt_ild*,scalar_t__) ; 
 int pte_bad_insn ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC2(struct pt_ild *ild, uint8_t length)
{
	uint8_t disp_bytes;
	int errcode;

	if (!ild)
		return -pte_internal;

	errcode = FUNC0(ild);
	if (errcode < 0)
		return errcode;

	disp_bytes = ild->disp_bytes;
	if (disp_bytes == 0)
		return FUNC1(ild, length);

	if (length + disp_bytes > ild->max_bytes)
		return -pte_bad_insn;

	/*Record only position; must be able to re-read itext bytes for actual
	   value. (SMC/CMC issue). */
	ild->disp_pos = length;

	return FUNC1(ild, length + disp_bytes);
}