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
typedef  int /*<<< orphan*/  lr ;
typedef  int /*<<< orphan*/  ib_net64_t ;
struct TYPE_4__ {int /*<<< orphan*/  to_port_num; int /*<<< orphan*/  to_lid; int /*<<< orphan*/  from_port_num; int /*<<< orphan*/  from_lid; } ;
typedef  TYPE_1__ ib_link_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FROM_LID ; 
 int /*<<< orphan*/  FROM_PORT ; 
 int /*<<< orphan*/  IB_SA_ATTR_LINKRECORD ; 
 int /*<<< orphan*/  LR ; 
 int /*<<< orphan*/  TO_LID ; 
 int /*<<< orphan*/  TO_PORT ; 
 int /*<<< orphan*/  dump_one_link_record ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,struct query_params*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_handle*,char*,int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const struct query_cmd *q, struct sa_handle * h,
			      struct query_params *p, int argc, char *argv[])
{
	ib_link_record_t lr;
	ib_net64_t comp_mask = 0;
	int from_lid = 0, to_lid = 0, from_port = -1, to_port = -1;

	if (argc > 0)
		FUNC3(h, argv[0], &from_lid, &from_port, NULL);

	if (argc > 1)
		FUNC3(h, argv[1], &to_lid, &to_port, NULL);

	FUNC2(&lr, 0, sizeof(lr));
	FUNC0(from_lid, 16, 0, lr.from_lid, LR, FROM_LID);
	FUNC0(from_port, 8, -1, lr.from_port_num, LR, FROM_PORT);
	FUNC0(to_lid, 16, 0, lr.to_lid, LR, TO_LID);
	FUNC0(to_port, 8, -1, lr.to_port_num, LR, TO_PORT);

	return FUNC1(h, IB_SA_ATTR_LINKRECORD, 0, comp_mask,
					&lr, sizeof(lr), dump_one_link_record, p);
}