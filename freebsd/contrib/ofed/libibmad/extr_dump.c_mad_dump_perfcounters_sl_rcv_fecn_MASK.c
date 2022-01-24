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
 int /*<<< orphan*/  IB_PC_EXT_PORT_SELECT_F ; 
 int /*<<< orphan*/  IB_PC_EXT_XMT_BYTES_F ; 
 int /*<<< orphan*/  IB_PC_SL_RCV_FECN_FIRST_F ; 
 int /*<<< orphan*/  IB_PC_SL_RCV_FECN_LAST_F ; 
 int FUNC0 (char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(char *buf, int bufsz, void *val, int valsz)
{
	int cnt;

	cnt = FUNC0(buf, bufsz, val, IB_PC_EXT_PORT_SELECT_F,
			   IB_PC_EXT_XMT_BYTES_F);
	if (cnt < 0)
		return;

	FUNC0(buf + cnt, bufsz - cnt, val, IB_PC_SL_RCV_FECN_FIRST_F,
		     IB_PC_SL_RCV_FECN_LAST_F);
}