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
typedef  int /*<<< orphan*/  uint16_t ;
struct sa_query_result {int dummy; } ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sa_query_result*,void (*) (void*,struct query_params*),struct query_params*) ; 
 int FUNC1 (struct sa_handle*,int /*<<< orphan*/ ,struct sa_query_result*) ; 
 int /*<<< orphan*/  FUNC2 (struct sa_query_result*) ; 

__attribute__((used)) static int FUNC3(struct sa_handle * h, uint16_t attr_id,
				    void (*dump_func) (void *,
						       struct query_params *p),
				    struct query_params *p)
{
	struct sa_query_result result;
	int ret = FUNC1(h, attr_id, &result);
	if (ret)
		return ret;

	FUNC0(&result, dump_func, p);
	FUNC2(&result);
	return ret;
}