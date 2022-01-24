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
struct eqn_node {TYPE_1__* node; } ;
struct eqn_def {scalar_t__ valsz; scalar_t__ keysz; int /*<<< orphan*/ * val; int /*<<< orphan*/ * key; } ;
struct TYPE_2__ {int /*<<< orphan*/  pos; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 scalar_t__ EQN_TOK_EOF ; 
 int /*<<< orphan*/  MANDOCERR_REQ_EMPTY ; 
 int /*<<< orphan*/  MODE_NOSUB ; 
 struct eqn_def* FUNC0 (struct eqn_node*) ; 
 scalar_t__ FUNC1 (struct eqn_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct eqn_node *ep)
{
	struct eqn_def	*def;

	if (FUNC1(ep, MODE_NOSUB) == EQN_TOK_EOF) {
		FUNC3(MANDOCERR_REQ_EMPTY,
		    ep->node->line, ep->node->pos, "undef");
		return;
	}
	if ((def = FUNC0(ep)) == NULL)
		return;
	FUNC2(def->key);
	FUNC2(def->val);
	def->key = def->val = NULL;
	def->keysz = def->valsz = 0;
}