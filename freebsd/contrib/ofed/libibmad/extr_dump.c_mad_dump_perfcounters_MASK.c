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

/* Variables and functions */
 scalar_t__ IB_PC_FIRST_F ; 
 scalar_t__ IB_PC_LAST_F ; 
 scalar_t__ IB_PC_QP1_DROP_F ; 
 scalar_t__ IB_PC_VL15_DROPPED_F ; 
 int FUNC0 (char*,int,void*,scalar_t__,scalar_t__) ; 

void FUNC1(char *buf, int bufsz, void *val, int valsz)
{
	int cnt, cnt2;

	cnt = FUNC0(buf, bufsz, val,
			   IB_PC_FIRST_F, IB_PC_VL15_DROPPED_F);
	if (cnt < 0)
		return;

	cnt2 = FUNC0(buf + cnt, bufsz - cnt, val,
			    IB_PC_QP1_DROP_F, IB_PC_QP1_DROP_F + 1);
	if (cnt2 < 0)
		return;

	FUNC0(buf + cnt + cnt2, bufsz - cnt - cnt2, val,
		     IB_PC_VL15_DROPPED_F, IB_PC_LAST_F);
}