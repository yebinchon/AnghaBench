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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sa_query_result {scalar_t__ status; } ;
struct sa_handle {int dummy; } ;
typedef  int /*<<< orphan*/  ib_net64_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IB_MAD_METHOD_GET_TABLE ; 
 scalar_t__ IB_SA_MAD_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ibd_sakey ; 
 int FUNC2 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,struct sa_query_result*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sa_handle * h,
			   uint16_t attr_id, uint32_t attr_mod,
			   ib_net64_t comp_mask, void *attr,
			   size_t attr_size,
			   struct sa_query_result *result)
{
	int ret = FUNC2(h, IB_MAD_METHOD_GET_TABLE, attr_id, attr_mod,
			   FUNC0(comp_mask), ibd_sakey, attr, attr_size, result);
	if (ret) {
		FUNC1(stderr, "Query SA failed: %s\n", FUNC4(ret));
		return ret;
	}

	if (result->status != IB_SA_MAD_STATUS_SUCCESS) {
		FUNC3(result->status);
		return EIO;
	}

	return ret;
}