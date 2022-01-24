#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sa_query_result {int /*<<< orphan*/  p_result_madw; } ;
struct sa_handle {int dummy; } ;
typedef  int /*<<< orphan*/  pr ;
typedef  int /*<<< orphan*/  ibmad_gid_t ;
struct TYPE_5__ {int /*<<< orphan*/  dgid; int /*<<< orphan*/  dlid; int /*<<< orphan*/  slid; } ;
typedef  TYPE_1__ ib_path_rec_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DLID ; 
 int /*<<< orphan*/  IB_SA_ATTR_PATHRECORD ; 
 int /*<<< orphan*/  PR ; 
 int /*<<< orphan*/  SLID ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,struct sa_query_result*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sa_query_result*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sa_handle * h, ibmad_gid_t *gid, int srclid, int destlid) {

	ib_path_rec_t pr;
	ib_net64_t comp_mask = 0;
	struct sa_query_result result;
	int ret;
	ib_path_rec_t *p_pr;

	FUNC3(&pr, 0, sizeof(pr));
	FUNC0(srclid, 16, 0, pr.slid, PR, SLID);
	FUNC0(destlid, 16, 0, pr.dlid, PR, DLID);

	ret = FUNC1(h, IB_SA_ATTR_PATHRECORD, 0, comp_mask, &pr, sizeof(pr), &result);
	if (ret)
		return ret;

	p_pr = FUNC5(result.p_result_madw, 0);
	FUNC2(gid, &p_pr->dgid, 16);
	FUNC4(&result);
	return ret;
}