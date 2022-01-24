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
typedef  int /*<<< orphan*/  slvl ;
struct TYPE_4__ {int /*<<< orphan*/  out_port_num; int /*<<< orphan*/  in_port_num; int /*<<< orphan*/  lid; } ;
typedef  TYPE_1__ ib_slvl_table_record_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_SA_ATTR_SL2VLTABLERECORD ; 
 int /*<<< orphan*/  IN_PORT ; 
 int /*<<< orphan*/  LID ; 
 int /*<<< orphan*/  OUT_PORT ; 
 int /*<<< orphan*/  SLVL ; 
 int /*<<< orphan*/  dump_one_slvl_record ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,struct query_params*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_handle*,char*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC4(const struct query_cmd *q, struct sa_handle * h,
			       struct query_params *p, int argc, char *argv[])
{
	ib_slvl_table_record_t slvl;
	ib_net64_t comp_mask = 0;
	int lid = 0, in_port = -1, out_port = -1;

	if (argc > 0)
		FUNC3(h, argv[0], &lid, &in_port, &out_port);

	FUNC2(&slvl, 0, sizeof(slvl));
	FUNC0(lid, 16, 0, slvl.lid, SLVL, LID);
	FUNC0(in_port, 8, -1, slvl.in_port_num, SLVL, IN_PORT);
	FUNC0(out_port, 8, -1, slvl.out_port_num, SLVL, OUT_PORT);

	return FUNC1(h, IB_SA_ATTR_SL2VLTABLERECORD, 0,
					comp_mask, &slvl, sizeof(slvl),
					dump_one_slvl_record, p);
}