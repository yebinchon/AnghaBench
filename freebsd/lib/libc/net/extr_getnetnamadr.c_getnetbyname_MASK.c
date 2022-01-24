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
struct netent {int dummy; } ;
struct netdata {int /*<<< orphan*/  data; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 struct netdata* FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct netent**,int*) ; 

struct netent *
FUNC2(const char *name)
{
	struct netdata *nd;
	struct netent *rval;
	int ret_h_errno;

	if ((nd = FUNC0()) == NULL)
		return (NULL);
	if (FUNC1(name, &nd->net, nd->data, sizeof(nd->data), &rval,
	    &ret_h_errno) != 0)
		return (NULL);
	return (rval);
}