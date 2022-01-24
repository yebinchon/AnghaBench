#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct roff_node {scalar_t__ type; TYPE_3__* norm; struct roff_node* prev; int /*<<< orphan*/ * next; TYPE_1__* parent; } ;
struct TYPE_5__ {int type; int ncols; int /*<<< orphan*/ * cols; } ;
struct TYPE_6__ {TYPE_2__ Bl; } ;
struct TYPE_4__ {struct roff_node* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESC_FON ; 
#define  LIST_bullet 134 
#define  LIST_column 133 
#define  LIST_dash 132 
#define  LIST_enum 131 
#define  LIST_hang 130 
#define  LIST_hyphen 129 
#define  LIST_tag 128 
 int /*<<< orphan*/  MD_spc ; 
 scalar_t__ ROFFT_BODY ; 
 scalar_t__ ROFFT_HEAD ; 
 int /*<<< orphan*/  code_blocks ; 
 int /*<<< orphan*/  escflags ; 
 int /*<<< orphan*/  list_blocks ; 
 int /*<<< orphan*/  FUNC0 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ outcount ; 
 int /*<<< orphan*/  outflags ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  quote_blocks ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct roff_node *n)
{
	struct roff_node	*bln;
	int			 i, nc;

	if (n->type != ROFFT_BODY)
		return;

	bln = n->parent->parent;
	switch (bln->norm->Bl.type) {
	case LIST_bullet:
	case LIST_dash:
	case LIST_hyphen:
	case LIST_enum:
		FUNC1((char)-1);
		if (code_blocks || quote_blocks)
			list_blocks--;
		break;
	case LIST_tag:
	case LIST_hang:
		FUNC0(n);
		break;

	case LIST_column:
		if (n->next == NULL)
			break;

		/* Calculate the array index of the current column. */

		i = 0;
		while ((n = n->prev) != NULL && n->type != ROFFT_HEAD)
			i++;

		/*
		 * If a width was specified for this column,
		 * subtract what printed, and
		 * add the same spacing as in mdoc_term.c.
		 */

		nc = bln->norm->Bl.ncols;
		i = i < nc ? FUNC3(bln->norm->Bl.cols[i]) - outcount +
		    (nc < 5 ? 4 : nc == 5 ? 3 : 1) : 1;
		if (i < 1)
			i = 1;
		while (i-- > 0)
			FUNC2(' ');

		outflags &= ~MD_spc;
		escflags &= ~ESC_FON;
		outcount = 0;
		break;

	default:
		break;
	}
}