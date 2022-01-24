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
typedef  int /*<<< orphan*/  smir ;
struct TYPE_4__ {int /*<<< orphan*/  lid; } ;
typedef  TYPE_1__ ib_sminfo_record_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_SA_ATTR_SMINFORECORD ; 
 int /*<<< orphan*/  LID ; 
 int /*<<< orphan*/  SMIR ; 
 int /*<<< orphan*/  dump_sm_info_record ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,struct query_params*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_handle*,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const struct query_cmd *q,
				 struct sa_handle * h, struct query_params *p,
				 int argc, char *argv[])
{
	ib_sminfo_record_t smir;
	ib_net64_t comp_mask = 0;
	int lid = 0;

	if (argc > 0)
		FUNC3(h, argv[0], &lid, NULL, NULL);

	FUNC2(&smir, 0, sizeof(smir));
	FUNC0(lid, 16, 0, smir.lid, SMIR, LID);

	return FUNC1(h, IB_SA_ATTR_SMINFORECORD, 0,
					comp_mask, &smir, sizeof(smir),
					dump_sm_info_record, p);
}