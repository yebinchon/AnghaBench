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
struct branchc {scalar_t__ nbranch; int /*<<< orphan*/  fwd; int /*<<< orphan*/  back; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCH_ ; 
 int /*<<< orphan*/  OOR1 ; 
 int /*<<< orphan*/  OOR2 ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct parse *p, struct branchc *bc)
{

	if (bc->nbranch == 0) {
		FUNC4(OCH_, bc->start);	/* offset is wrong */
		bc->fwd = bc->start;
		bc->back = bc->start;
	}

	FUNC1(OOR1, bc->back);
	bc->back = FUNC5();
	FUNC0(bc->fwd);			/* fix previous offset */
	bc->fwd = FUNC3();
	FUNC2(OOR2, 0);			/* offset is very wrong */
	++bc->nbranch;
}