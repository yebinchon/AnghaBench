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
struct roff_node {scalar_t__ type; int flags; int tok; scalar_t__ end; TYPE_1__* body; int /*<<< orphan*/ * child; int /*<<< orphan*/  string; } ;
struct md_act {int (* pre ) (struct roff_node*) ;int /*<<< orphan*/  (* post ) (struct roff_node*) ;scalar_t__ (* cond ) (struct roff_node*) ;} ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 scalar_t__ ENDBODY_NOT ; 
 int MD_Sm ; 
 int MD_nl ; 
 int MD_nonl ; 
 int MD_sp ; 
 int MD_spc ; 
 int MD_spc_force ; 
 int NODE_DELIMC ; 
 int NODE_DELIMO ; 
 int NODE_ENDED ; 
 int NODE_LINE ; 
 int NODE_NOPRT ; 
 scalar_t__ ROFFT_COMMENT ; 
 scalar_t__ ROFFT_TEXT ; 
 int ROFF_MAX ; 
#define  ROFF_br 129 
#define  ROFF_sp 128 
 struct md_act* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct roff_node*) ; 
 int FUNC3 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int outflags ; 
 scalar_t__ FUNC5 (struct roff_node*) ; 
 int FUNC6 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct roff_node*) ; 

__attribute__((used)) static void
FUNC8(struct roff_node *n)
{
	const struct md_act	*act;
	int			 cond, process_children;

	if (n->type == ROFFT_COMMENT || n->flags & NODE_NOPRT)
		return;

	if (outflags & MD_nonl)
		outflags &= ~(MD_nl | MD_sp);
	else if (outflags & MD_spc && n->flags & NODE_LINE)
		outflags |= MD_nl;

	act = NULL;
	cond = 0;
	process_children = 1;
	n->flags &= ~NODE_ENDED;

	if (n->type == ROFFT_TEXT) {
		if (n->flags & NODE_DELIMC)
			outflags &= ~(MD_spc | MD_spc_force);
		else if (outflags & MD_Sm)
			outflags |= MD_spc_force;
		FUNC4(n->string);
		if (n->flags & NODE_DELIMO)
			outflags &= ~(MD_spc | MD_spc_force);
		else if (outflags & MD_Sm)
			outflags |= MD_spc;
	} else if (n->tok < ROFF_MAX) {
		switch (n->tok) {
		case ROFF_br:
			process_children = FUNC3(n);
			break;
		case ROFF_sp:
			process_children = FUNC2(n);
			break;
		default:
			process_children = 0;
			break;
		}
	} else {
		act = FUNC0(n->tok);
		cond = act->cond == NULL || (*act->cond)(n);
		if (cond && act->pre != NULL &&
		    (n->end == ENDBODY_NOT || n->child != NULL))
			process_children = (*act->pre)(n);
	}

	if (process_children && n->child != NULL)
		FUNC1(n->child);

	if (n->flags & NODE_ENDED)
		return;

	if (cond && act->post != NULL)
		(*act->post)(n);

	if (n->end != ENDBODY_NOT)
		n->body->flags |= NODE_ENDED;
}