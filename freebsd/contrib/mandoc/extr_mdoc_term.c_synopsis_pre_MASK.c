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
struct termp {int dummy; } ;
struct roff_node {int flags; scalar_t__ tok; TYPE_1__* prev; } ;
struct TYPE_2__ {scalar_t__ tok; } ;

/* Variables and functions */
#define  MDOC_Fd 133 
#define  MDOC_Fn 132 
#define  MDOC_Fo 131 
#define  MDOC_Ft 130 
#define  MDOC_In 129 
#define  MDOC_Vt 128 
 int NODE_SYNPRETTY ; 
 int /*<<< orphan*/  FUNC0 (struct termp*) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*) ; 

__attribute__((used)) static void
FUNC2(struct termp *p, const struct roff_node *n)
{
	/*
	 * Obviously, if we're not in a SYNOPSIS or no prior macros
	 * exist, do nothing.
	 */
	if (NULL == n->prev || ! (NODE_SYNPRETTY & n->flags))
		return;

	/*
	 * If we're the second in a pair of like elements, emit our
	 * newline and return.  UNLESS we're `Fo', `Fn', `Fn', in which
	 * case we soldier on.
	 */
	if (n->prev->tok == n->tok &&
	    MDOC_Ft != n->tok &&
	    MDOC_Fo != n->tok &&
	    MDOC_Fn != n->tok) {
		FUNC0(p);
		return;
	}

	/*
	 * If we're one of the SYNOPSIS set and non-like pair-wise after
	 * another (or Fn/Fo, which we've let slip through) then assert
	 * vertical space, else only newline and move on.
	 */
	switch (n->prev->tok) {
	case MDOC_Fd:
	case MDOC_Fn:
	case MDOC_Fo:
	case MDOC_In:
	case MDOC_Vt:
		FUNC1(p);
		break;
	case MDOC_Ft:
		if (MDOC_Fn != n->tok && MDOC_Fo != n->tok) {
			FUNC1(p);
			break;
		}
		/* FALLTHROUGH */
	default:
		FUNC0(p);
		break;
	}
}