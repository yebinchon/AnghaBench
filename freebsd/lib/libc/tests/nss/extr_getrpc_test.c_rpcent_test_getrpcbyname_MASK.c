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
struct rpcent {char* r_name; char** r_aliases; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpcent*,struct rpcent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcent*) ; 
 struct rpcent* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct rpcent_test_data*,struct rpcent*) ; 
 scalar_t__ FUNC5 (struct rpcent*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct rpcent *rpc_model, void *mdata)
{
	char **alias;
	struct rpcent *rpc;

	FUNC3("testing getrpcbyname() with the following data:\n");
	FUNC1(rpc_model);

	rpc = FUNC2(rpc_model->r_name);
	if (FUNC5(rpc, NULL) != 0)
		goto errfin;

	if ((FUNC0(rpc, rpc_model, NULL) != 0) &&
	    (FUNC4((struct rpcent_test_data *)mdata, rpc)
	    !=0))
	    goto errfin;

	for (alias = rpc_model->r_aliases; *alias; ++alias) {
		rpc = FUNC2(*alias);

		if (FUNC5(rpc, NULL) != 0)
			goto errfin;

		if ((FUNC0(rpc, rpc_model, NULL) != 0) &&
		    (FUNC4(
		    (struct rpcent_test_data *)mdata, rpc) != 0))
		    goto errfin;
	}

	FUNC3("ok\n");
	return (0);

errfin:
	FUNC3("not ok\n");

	return (-1);
}