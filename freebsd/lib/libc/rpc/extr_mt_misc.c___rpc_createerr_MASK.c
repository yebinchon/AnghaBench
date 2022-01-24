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
struct rpc_createerr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_createerr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_createerr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rce_key ; 
 scalar_t__ rce_key_error ; 
 int /*<<< orphan*/  rce_key_init ; 
 int /*<<< orphan*/  rce_once ; 
 struct rpc_createerr rpc_createerr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void*) ; 

struct rpc_createerr *
FUNC7(void)
{
	struct rpc_createerr *rce_addr = NULL;

	if (FUNC4())
		return (&rpc_createerr);
	if (FUNC5(&rce_once, rce_key_init) != 0 || rce_key_error != 0)
		return (&rpc_createerr);
	rce_addr = (struct rpc_createerr *)FUNC3(rce_key);
	if (!rce_addr) {
		rce_addr = (struct rpc_createerr *)
			FUNC1(sizeof (struct rpc_createerr));
		if (FUNC6(rce_key, (void *) rce_addr) != 0) {
			FUNC0(rce_addr);
			return (&rpc_createerr);
		}
		FUNC2(rce_addr, 0, sizeof (struct rpc_createerr));
		return (rce_addr);
	}
	return (rce_addr);
}