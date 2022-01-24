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
typedef  int /*<<< orphan*/  NODE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MISMATCHEXIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int
FUNC3(FILE *fi, FILE *fj)
{
	int rval;
	NODE *root1, *root2;

	root1 = FUNC1(fi);
	root2 = FUNC1(fj);
	rval = FUNC2(root1, root2, "");
	rval += FUNC0(root1, root2, "");
	if (rval > 0)
		return (MISMATCHEXIT);
	return (0);
}