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
struct rpcent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rpcent_test_data*,struct rpcent*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct rpcent* FUNC2 () ; 
 int /*<<< orphan*/  rpcent ; 
 scalar_t__ FUNC3 (struct rpcent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct rpcent_test_data *td)
{
	struct rpcent *rpc;

	FUNC4(1);
	while ((rpc = FUNC2()) != NULL) {
		if (FUNC3(rpc, NULL) == 0)
			FUNC0(rpcent, td, rpc);
		else
			return (-1);
	}
	FUNC1();

	return (0);
}