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
struct ub_result {int nxdomain; } ;
struct ub_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,struct ub_result*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (struct ub_ctx*,char*,int,int,struct ub_result**) ; 
 int /*<<< orphan*/  FUNC4 (struct ub_result*) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct ub_ctx* ctx, char* q, int t, int c, int docname)
{
	int ret;
	struct ub_result* result;

	ret = FUNC3(ctx, q, t, c, &result);
	if(ret != 0) {
		FUNC1(stderr, "resolve error: %s\n", FUNC5(ret));
		FUNC0(1);
	}
	FUNC2(q, t, c, result, docname);
	ret = result->nxdomain;
	FUNC4(result);
	return ret;
}