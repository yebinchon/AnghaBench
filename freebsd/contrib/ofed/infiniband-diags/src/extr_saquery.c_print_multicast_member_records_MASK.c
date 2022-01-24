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
struct sa_query_result {unsigned int result_cnt; int /*<<< orphan*/  p_result_madw; } ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
typedef  int /*<<< orphan*/  ib_member_rec_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SA_ATTR_MCRECORD ; 
 int /*<<< orphan*/  IB_SA_ATTR_NODERECORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sa_query_result*,struct query_params*) ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,struct sa_query_result*) ; 
 int /*<<< orphan*/  FUNC2 (struct sa_query_result*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct sa_handle * h,
					struct query_params *params)
{
	struct sa_query_result mc_group_result;
	struct sa_query_result nr_result;
	int ret;
	unsigned i;

	ret = FUNC1(h, IB_SA_ATTR_MCRECORD, &mc_group_result);
	if (ret)
		return ret;

	ret = FUNC1(h, IB_SA_ATTR_NODERECORD, &nr_result);
	if (ret)
		goto return_mc;

	for (i = 0; i < mc_group_result.result_cnt; i++) {
		ib_member_rec_t *rec = (ib_member_rec_t *)
				FUNC3(mc_group_result.p_result_madw,
					      i);
		FUNC0(rec, &nr_result, params);
	}

	FUNC2(&nr_result);

return_mc:
	FUNC2(&mc_group_result);

	return ret;
}