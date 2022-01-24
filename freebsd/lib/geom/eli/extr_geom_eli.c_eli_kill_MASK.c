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
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*) ; 
 char* FUNC3 (struct gctl_req*,char*,int) ; 
 int FUNC4 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*) ; 

__attribute__((used)) static void
FUNC6(struct gctl_req *req)
{
	const char *prov;
	int i, nargs, all;

	nargs = FUNC4(req, "nargs");
	all = FUNC4(req, "all");
	if (!all && nargs == 0) {
		FUNC2(req, "Too few arguments.");
		return;
	}
	/*
	 * How '-a' option combine with a list of providers:
	 * Delete Master Keys from all attached providers:
	 * geli kill -a
	 * Delete Master Keys from all attached providers and from
	 * detached da0 and da1:
	 * geli kill -a da0 da1
	 * Delete Master Keys from (attached or detached) da0 and da1:
	 * geli kill da0 da1
	 */

	/* First detached providers. */
	for (i = 0; i < nargs; i++) {
		prov = FUNC3(req, "arg%d", i);
		if (!FUNC0(prov))
			FUNC1(req, prov);
	}
	/* Now attached providers. */
	FUNC5(req);
}