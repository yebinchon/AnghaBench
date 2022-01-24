#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct roff_man {int flags; TYPE_2__* last; } ;
typedef  enum mdelim { ____Placeholder_mdelim } mdelim ;
struct TYPE_4__ {scalar_t__ type; char const* string; int /*<<< orphan*/  flags; TYPE_1__* parent; } ;
struct TYPE_3__ {scalar_t__ tok; } ;

/* Variables and functions */
 int DELIM_CLOSE ; 
 int DELIM_MAX ; 
 int DELIM_NONE ; 
 int DELIM_OPEN ; 
 scalar_t__ MDOC_Fd ; 
 int MDOC_KEEP ; 
 int MDOC_NODELIMC ; 
 int MDOC_SMOFF ; 
 int MDOC_SYNOPSIS ; 
 int /*<<< orphan*/  NODE_DELIMC ; 
 int /*<<< orphan*/  NODE_DELIMO ; 
 scalar_t__ ROFFT_TEXT ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_man*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct roff_man*,char const*) ; 

__attribute__((used)) static void
FUNC3(struct roff_man *mdoc, int line, int col, const char *p,
		enum mdelim d, int may_append)
{

	if (d == DELIM_MAX)
		d = FUNC0(p);

	if (may_append &&
	    ! (mdoc->flags & (MDOC_SYNOPSIS | MDOC_KEEP | MDOC_SMOFF)) &&
	    d == DELIM_NONE && mdoc->last->type == ROFFT_TEXT &&
	    FUNC0(mdoc->last->string) == DELIM_NONE) {
		FUNC2(mdoc, p);
		return;
	}

	FUNC1(mdoc, line, col, p);

	/*
	 * If the word consists of a bare delimiter,
	 * flag the new node accordingly,
	 * unless doing so was vetoed by the invoking macro.
	 * Always clear the veto, it is only valid for one word.
	 */

	if (d == DELIM_OPEN)
		mdoc->last->flags |= NODE_DELIMO;
	else if (d == DELIM_CLOSE &&
	    ! (mdoc->flags & MDOC_NODELIMC) &&
	    mdoc->last->parent->tok != MDOC_Fd)
		mdoc->last->flags |= NODE_DELIMC;
	mdoc->flags &= ~MDOC_NODELIMC;
}