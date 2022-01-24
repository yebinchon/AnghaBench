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
typedef  int /*<<< orphan*/  vlarb ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  block_num; int /*<<< orphan*/  port_num; int /*<<< orphan*/  lid; } ;
typedef  TYPE_1__ ib_vl_arb_table_record_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_SA_ATTR_VLARBTABLERECORD ; 
 int /*<<< orphan*/  LID ; 
 int /*<<< orphan*/  OUT_PORT ; 
 int /*<<< orphan*/  VLA ; 
 int /*<<< orphan*/  dump_one_vlarb_record ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,struct query_params*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_handle*,char*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC4(const struct query_cmd *q, struct sa_handle * h,
			       struct query_params *p, int argc, char *argv[])
{
	ib_vl_arb_table_record_t vlarb;
	ib_net64_t comp_mask = 0;
	int lid = 0, port = -1, block = -1;

	if (argc > 0)
		FUNC3(h, argv[0], &lid, &port, &block);

	FUNC2(&vlarb, 0, sizeof(vlarb));
	FUNC0(lid, 16, 0, vlarb.lid, VLA, LID);
	FUNC0(port, 8, -1, vlarb.port_num, VLA, OUT_PORT);
	FUNC0(block, 8, -1, vlarb.block_num, VLA, BLOCK);

	return FUNC1(h, IB_SA_ATTR_VLARBTABLERECORD, 0,
					comp_mask, &vlarb, sizeof(vlarb),
					dump_one_vlarb_record, p);
}