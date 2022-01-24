#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  mftr ;
typedef  int /*<<< orphan*/  ib_net64_t ;
struct TYPE_4__ {int lid; int position_block_num; } ;
typedef  TYPE_1__ ib_mft_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IB_MCAST_BLOCK_ID_MASK_HO ; 
 int /*<<< orphan*/  IB_SA_ATTR_MFTRECORD ; 
 int /*<<< orphan*/  LID ; 
 int /*<<< orphan*/  MFTR ; 
 int /*<<< orphan*/  POSITION ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  dump_one_mft_record ; 
 int FUNC2 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,struct query_params*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sa_handle*,char*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC5(const struct query_cmd *q, struct sa_handle * h,
			     struct query_params *p, int argc, char *argv[])
{
	ib_mft_record_t mftr;
	ib_net64_t comp_mask = 0;
	int lid = 0, block = -1, position = -1;
	uint16_t pos = 0;

	if (argc > 0)
		FUNC4(h, argv[0], &lid, &position, &block);

	FUNC3(&mftr, 0, sizeof(mftr));
	FUNC0(lid, 16, 0, mftr.lid, MFTR, LID);
	FUNC0(block, 16, -1, mftr.position_block_num, MFTR, BLOCK);
	mftr.position_block_num &= FUNC1(IB_MCAST_BLOCK_ID_MASK_HO);
	FUNC0(position, 8, -1, pos, MFTR, POSITION);
	mftr.position_block_num |= FUNC1(pos << 12);

	return FUNC2(h, IB_SA_ATTR_MFTRECORD, 0, comp_mask,
					&mftr, sizeof(mftr), dump_one_mft_record, p);
}