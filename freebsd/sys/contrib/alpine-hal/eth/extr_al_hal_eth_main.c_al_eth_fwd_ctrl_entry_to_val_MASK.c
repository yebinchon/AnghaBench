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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_eth_fwd_ctrl_table_entry {scalar_t__ prio_sel; scalar_t__ queue_sel_1; scalar_t__ queue_sel_2; scalar_t__ udma_sel; scalar_t__ hdr_split_len_sel; scalar_t__ filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ AL_ETH_CTRL_TABLE_HDR_SPLIT_LEN_SEL_0 ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ AL_TRUE ; 

__attribute__((used)) static uint32_t	FUNC4(struct al_eth_fwd_ctrl_table_entry *entry)
{
	uint32_t val = 0;
	FUNC3(val,  FUNC1(3,0), 0, entry->prio_sel);
	FUNC3(val,  FUNC1(7,4), 4, entry->queue_sel_1);
	FUNC3(val,  FUNC1(9,8), 8, entry->queue_sel_2);
	FUNC3(val,  FUNC1(13,10), 10, entry->udma_sel);
	FUNC3(val,  FUNC1(17,15), 15, entry->hdr_split_len_sel);
	if (entry->hdr_split_len_sel != AL_ETH_CTRL_TABLE_HDR_SPLIT_LEN_SEL_0)
		val |= FUNC0(18);
	FUNC2(val, 19, !!(entry->filter == AL_TRUE));

	return val;
}