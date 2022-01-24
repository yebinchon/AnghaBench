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
struct eqn_node {scalar_t__ toksz; int /*<<< orphan*/  start; TYPE_1__* node; struct eqn_def* defs; scalar_t__ defsz; } ;
struct eqn_def {scalar_t__ keysz; scalar_t__ valsz; int /*<<< orphan*/ * val; int /*<<< orphan*/ * key; } ;
struct TYPE_2__ {int /*<<< orphan*/  pos; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 scalar_t__ EQN_TOK_EOF ; 
 int /*<<< orphan*/  MANDOCERR_REQ_EMPTY ; 
 int /*<<< orphan*/  MODE_NOSUB ; 
 int /*<<< orphan*/  MODE_QUOTED ; 
 struct eqn_def* FUNC0 (struct eqn_node*) ; 
 scalar_t__ FUNC1 (struct eqn_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct eqn_def* FUNC4 (struct eqn_def*,scalar_t__,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct eqn_node *ep)
{
	struct eqn_def	*def;
	int		 i;

	if (FUNC1(ep, MODE_NOSUB) == EQN_TOK_EOF) {
		FUNC3(MANDOCERR_REQ_EMPTY,
		    ep->node->line, ep->node->pos, "define");
		return;
	}

	/*
	 * Search for a key that already exists.
	 * Create a new key if none is found.
	 */
	if ((def = FUNC0(ep)) == NULL) {
		/* Find holes in string array. */
		for (i = 0; i < (int)ep->defsz; i++)
			if (0 == ep->defs[i].keysz)
				break;

		if (i == (int)ep->defsz) {
			ep->defsz++;
			ep->defs = FUNC4(ep->defs,
			    ep->defsz, sizeof(struct eqn_def));
			ep->defs[i].key = ep->defs[i].val = NULL;
		}

		def = ep->defs + i;
		FUNC2(def->key);
		def->key = FUNC5(ep->start, ep->toksz);
		def->keysz = ep->toksz;
	}

	if (FUNC1(ep, MODE_QUOTED) == EQN_TOK_EOF) {
		FUNC3(MANDOCERR_REQ_EMPTY,
		    ep->node->line, ep->node->pos, "define %s", def->key);
		FUNC2(def->key);
		FUNC2(def->val);
		def->key = def->val = NULL;
		def->keysz = def->valsz = 0;
		return;
	}
	FUNC2(def->val);
	def->val = FUNC5(ep->start, ep->toksz);
	def->valsz = ep->toksz;
}