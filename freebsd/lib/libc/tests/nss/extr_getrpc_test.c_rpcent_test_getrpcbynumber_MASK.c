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
struct rpcent_test_data {int dummy; } ;
struct rpcent {int /*<<< orphan*/  r_number; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpcent*,struct rpcent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcent*) ; 
 struct rpcent* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct rpcent_test_data*,struct rpcent*) ; 
 scalar_t__ FUNC5 (struct rpcent*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct rpcent *rpc_model, void *mdata)
{
	struct rpcent *rpc;

	FUNC3("testing getrpcbyport() with the following data...\n");
	FUNC1(rpc_model);

	rpc = FUNC2(rpc_model->r_number);
	if (FUNC5(rpc, NULL) != 0 ||
	    (FUNC0(rpc, rpc_model, NULL) != 0 &&
	     FUNC4((struct rpcent_test_data *)mdata, rpc)
	    != 0)) {
		FUNC3("not ok\n");
		return (-1);
	} else {
		FUNC3("ok\n");
		return (0);
	}
}