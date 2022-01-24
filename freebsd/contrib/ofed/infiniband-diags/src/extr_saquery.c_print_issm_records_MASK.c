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
struct sa_query_result {int dummy; } ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PORT_CAP_IS_SM ; 
 int /*<<< orphan*/  IB_PORT_CAP_SM_DISAB ; 
 int /*<<< orphan*/  dump_portinfo_record ; 
 int /*<<< orphan*/  FUNC0 (struct sa_query_result*,int /*<<< orphan*/ ,struct query_params*) ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,struct sa_query_result*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_query_result*) ; 

__attribute__((used)) static int FUNC4(struct sa_handle * h, struct query_params *p)
{
	struct sa_query_result result;
	int ret = 0;

	/* First, get IsSM records */
	ret = FUNC1(h, IB_PORT_CAP_IS_SM, &result);
	if (ret != 0)
		return (ret);

	FUNC2("IsSM ports\n");
	FUNC0(&result, dump_portinfo_record, p);
	FUNC3(&result);

	/* Now, get IsSMdisabled records */
	ret = FUNC1(h, IB_PORT_CAP_SM_DISAB, &result);
	if (ret != 0)
		return (ret);

	FUNC2("\nIsSMdisabled ports\n");
	FUNC0(&result, dump_portinfo_record, p);
	FUNC3(&result);

	return (ret);
}