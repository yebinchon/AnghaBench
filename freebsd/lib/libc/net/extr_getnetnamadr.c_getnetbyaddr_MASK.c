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
struct netent {int dummy; } ;
struct netdata {int /*<<< orphan*/  data; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 struct netdata* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct netent**,int*) ; 

struct netent *
FUNC2(uint32_t addr, int af)
{
	struct netdata *nd;
	struct netent *rval;
	int ret_h_errno;

	if ((nd = FUNC0()) == NULL)
		return (NULL);
	if (FUNC1(addr, af, &nd->net, nd->data, sizeof(nd->data),
	    &rval, &ret_h_errno) != 0)
		return (NULL);
	return (rval);
}