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
struct protoent {int dummy; } ;
struct protodata {int /*<<< orphan*/  data; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 struct protodata* FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct protoent**) ; 

struct protoent *
FUNC2(const char *name)
{
	struct protodata *pd;
	struct protoent *rval;

	if ((pd = FUNC0()) == NULL)
		return (NULL);
	if (FUNC1(name, &pd->proto, pd->data, sizeof(pd->data),
	    &rval) != 0)
		return (NULL);
	return (rval);
}