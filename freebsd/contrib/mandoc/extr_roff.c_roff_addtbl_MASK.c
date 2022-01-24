#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tbl_span {int dummy; } ;
struct tbl_node {int dummy; } ;
struct roff_node {int flags; struct tbl_span* span; } ;
struct TYPE_2__ {scalar_t__ macroset; } ;
struct roff_man {int /*<<< orphan*/  next; TYPE_1__ meta; } ;

/* Variables and functions */
 scalar_t__ MACROSET_MAN ; 
 int NODE_ENDED ; 
 int NODE_VALID ; 
 int /*<<< orphan*/  ROFFT_TBL ; 
 int /*<<< orphan*/  ROFF_NEXT_SIBLING ; 
 int /*<<< orphan*/  ROFF_TS ; 
 int /*<<< orphan*/  TOKEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct roff_man*,int /*<<< orphan*/ ) ; 
 struct roff_node* FUNC1 (struct roff_man*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct roff_man*,struct roff_node*) ; 
 struct tbl_span* FUNC3 (struct tbl_node*) ; 

__attribute__((used)) static void
FUNC4(struct roff_man *man, int line, struct tbl_node *tbl)
{
	struct roff_node	*n;
	struct tbl_span		*span;

	if (man->meta.macroset == MACROSET_MAN)
		FUNC0(man, ROFF_TS);
	while ((span = FUNC3(tbl)) != NULL) {
		n = FUNC1(man, line, 0, ROFFT_TBL, TOKEN_NONE);
		n->span = span;
		FUNC2(man, n);
		n->flags |= NODE_VALID | NODE_ENDED;
		man->next = ROFF_NEXT_SIBLING;
	}
}