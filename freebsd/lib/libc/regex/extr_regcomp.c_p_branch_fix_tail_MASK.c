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
struct branchc {scalar_t__ nbranch; int /*<<< orphan*/  back; int /*<<< orphan*/  fwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_CH ; 

__attribute__((used)) static void
FUNC2(struct parse *p, struct branchc *bc)
{

	/* Fix bogus offset at the tail if we actually have branches */
	if (bc->nbranch > 0) {
		FUNC0(bc->fwd);
		FUNC1(O_CH, bc->back);
	}
}