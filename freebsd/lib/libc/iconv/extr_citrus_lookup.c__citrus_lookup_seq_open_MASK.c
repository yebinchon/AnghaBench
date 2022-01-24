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
struct _citrus_lookup {int cl_ignore_case; scalar_t__ cl_keylen; int /*<<< orphan*/ * cl_key; } ;

/* Variables and functions */
 int ENOENT ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct _citrus_lookup*) ; 
 struct _citrus_lookup* FUNC1 (int) ; 
 int FUNC2 (struct _citrus_lookup*,char const*) ; 
 int FUNC3 (struct _citrus_lookup*,char const*) ; 

int
FUNC4(struct _citrus_lookup **rcl, const char *name,
    int ignore_case)
{
	int ret;
	struct _citrus_lookup *cl;

	cl = FUNC1(sizeof(*cl));
	if (cl == NULL)
		return (errno);

	cl->cl_key = NULL;
	cl->cl_keylen = 0;
	cl->cl_ignore_case = ignore_case;
	ret = FUNC2(cl, name);
	if (ret == ENOENT)
		ret = FUNC3(cl, name);
	if (!ret)
		*rcl = cl;
	else
		FUNC0(cl);

	return (ret);
}