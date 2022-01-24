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
struct parse {int dummy; } ;
struct branchc {scalar_t__ outer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct parse*,struct branchc*) ; 
 int /*<<< orphan*/  FUNC2 (struct parse*,struct branchc*) ; 
 int /*<<< orphan*/  FUNC3 (struct parse*,struct branchc*) ; 

__attribute__((used)) static bool
FUNC4(struct parse *p, struct branchc *bc)
{
	int ate = 0;

	ate = FUNC1(p, bc);
	if (ate == 0)
		return (false);
	else if ((ate > 1 || (bc->outer && !FUNC0())) && !FUNC2(p, bc))
		/*
		 * Halt parsing only if we have an empty branch and p_branch_empty
		 * indicates that we must not continue. In the future, this will not
		 * necessarily be an error.
		 */
		return (false);
	FUNC3(p, bc);

	return (true);
}