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
struct pt_insn_ext {int iclass; } ;
struct pt_insn {int dummy; } ;

/* Variables and functions */
#define  PTI_INST_VMLAUNCH 130 
#define  PTI_INST_VMPTRLD 129 
#define  PTI_INST_VMRESUME 128 
 int FUNC0 (struct pt_insn const*,struct pt_insn_ext const*) ; 

int FUNC1(const struct pt_insn *insn,
			  const struct pt_insn_ext *iext)
{
	if (!iext)
		return 0;

	switch (iext->iclass) {
	default:
		return FUNC0(insn, iext);

	case PTI_INST_VMPTRLD:
	case PTI_INST_VMLAUNCH:
	case PTI_INST_VMRESUME:
		return 1;
	}
}