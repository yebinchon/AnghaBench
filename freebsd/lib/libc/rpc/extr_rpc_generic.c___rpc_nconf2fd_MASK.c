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
struct netconfig {int dummy; } ;
struct __rpc_sockinfo {int /*<<< orphan*/  si_proto; int /*<<< orphan*/  si_socktype; int /*<<< orphan*/  si_af; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netconfig const*,struct __rpc_sockinfo*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(const struct netconfig *nconf)
{
	struct __rpc_sockinfo si;

	if (!FUNC0(nconf, &si))
		return 0;

	return FUNC1(si.si_af, si.si_socktype, si.si_proto);
}