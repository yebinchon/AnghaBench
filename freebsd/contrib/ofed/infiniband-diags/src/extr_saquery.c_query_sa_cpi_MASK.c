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
struct sa_query_result {scalar_t__ status; int /*<<< orphan*/  p_result_madw; } ;
struct sa_handle {int dummy; } ;
struct query_params {int /*<<< orphan*/  cpi; } ;
typedef  int /*<<< orphan*/  ib_class_port_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_PORT_INFO ; 
 int EIO ; 
 int /*<<< orphan*/  IB_MAD_METHOD_GET ; 
 scalar_t__ IB_SA_MAD_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ibd_sakey ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sa_query_result*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sa_query_result*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sa_handle *h, struct query_params *query_params)
{
	ib_class_port_info_t *cpi;
	struct sa_query_result result;
	int ret = FUNC4(h, IB_MAD_METHOD_GET, CLASS_PORT_INFO, 0, 0,
		       ibd_sakey, NULL, 0, &result);
	if (ret) {
		FUNC0(stderr, "Query SA failed: %s\n", FUNC6(ret));
		return ret;
	}

	if (result.status != IB_SA_MAD_STATUS_SUCCESS) {
		FUNC5(result.status);
		ret = EIO;
		goto Exit;
	}
	cpi = FUNC3(result.p_result_madw, 0);
	FUNC1(&query_params->cpi, cpi, sizeof(query_params->cpi));
Exit:
	FUNC2(&result);
	return (0);
}