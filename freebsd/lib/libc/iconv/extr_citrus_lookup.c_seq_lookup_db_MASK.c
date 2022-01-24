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
struct _region {int dummy; } ;
struct _citrus_lookup {int /*<<< orphan*/  cl_dblocator; int /*<<< orphan*/  cl_key; int /*<<< orphan*/  cl_db; int /*<<< orphan*/  cl_keylen; scalar_t__ cl_ignore_case; scalar_t__ cl_rewind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct _region*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct _citrus_lookup *cl, const char *key, struct _region *data)
{

	cl->cl_rewind = 0;
	FUNC3(cl->cl_key);
	cl->cl_key = FUNC4(key);
	if (cl->cl_ignore_case)
		FUNC0(cl->cl_key);
	cl->cl_keylen = FUNC5(cl->cl_key);
	FUNC1(&cl->cl_dblocator);
	return (FUNC2(cl->cl_db, cl->cl_key, data,
	    &cl->cl_dblocator));
}