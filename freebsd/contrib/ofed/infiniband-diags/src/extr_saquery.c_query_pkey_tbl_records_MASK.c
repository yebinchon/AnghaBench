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
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  pktr ;
struct TYPE_4__ {int /*<<< orphan*/  block_num; int /*<<< orphan*/  port_num; int /*<<< orphan*/  lid; } ;
typedef  TYPE_1__ ib_pkey_table_record_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_SA_ATTR_PKEYTABLERECORD ; 
 int /*<<< orphan*/  LID ; 
 int /*<<< orphan*/  PKEY ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/  dump_one_pkey_tbl_record ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,struct query_params*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_handle*,char*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC4(const struct query_cmd *q,
				  struct sa_handle * h, struct query_params *p,
				  int argc, char *argv[])
{
	ib_pkey_table_record_t pktr;
	ib_net64_t comp_mask = 0;
	int lid = 0, port = -1, block = -1;

	if (argc > 0)
		FUNC3(h, argv[0], &lid, &port, &block);

	FUNC2(&pktr, 0, sizeof(pktr));
	FUNC0(lid, 16, 0, pktr.lid, PKEY, LID);
	FUNC0(port, 8, -1, pktr.port_num, PKEY, PORT);
	FUNC0(block, 16, -1, pktr.block_num, PKEY, BLOCK);

	return FUNC1(h, IB_SA_ATTR_PKEYTABLERECORD, 0,
					comp_mask, &pktr, sizeof(pktr),
					dump_one_pkey_tbl_record, p);
}