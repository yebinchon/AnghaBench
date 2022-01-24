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
struct query_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mft; int /*<<< orphan*/  lid; int /*<<< orphan*/  position_block_num; } ;
typedef  TYPE_1__ ib_mft_record_t ;

/* Variables and functions */
 unsigned int IB_LID_MCAST_START_HO ; 
 int IB_MCAST_BLOCK_ID_MASK_HO ; 
 int IB_MCAST_BLOCK_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(void *data, struct query_params *p)
{
	ib_mft_record_t *mftr = data;
	unsigned position = FUNC0(mftr->position_block_num) >> 12;
	unsigned block = FUNC0(mftr->position_block_num) &
	    IB_MCAST_BLOCK_ID_MASK_HO;
	int i;
	unsigned offset;

	FUNC1("MFT Record dump:\n"
	       "\t\tLID........................%u\n"
	       "\t\tPosition...................%u\n"
	       "\t\tBlock......................%u\n"
	       "\t\tMFT:\n\t\tMLID\tPort Mask\n",
	       FUNC0(mftr->lid), position, block);
	offset = IB_LID_MCAST_START_HO + block * 32;
	for (i = 0; i < IB_MCAST_BLOCK_SIZE; i++)
		FUNC1("\t\t0x%04x\t0x%04x\n",
		       offset + i, FUNC0(mftr->mft[i]));
	FUNC1("\n");
}