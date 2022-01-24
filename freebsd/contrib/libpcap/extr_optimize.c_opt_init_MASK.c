#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vmapinfo {int dummy; } ;
struct valnode {int dummy; } ;
struct icode {int /*<<< orphan*/  root; } ;
struct edge {int id; struct block* pred; int /*<<< orphan*/ * edom; } ;
struct block {int /*<<< orphan*/  stmts; struct edge ef; struct edge et; int /*<<< orphan*/ * closure; int /*<<< orphan*/ * dom; } ;
struct TYPE_4__ {int n_blocks; int n_edges; int edgewords; int nodewords; int maxval; struct valnode* vnode_base; struct vmapinfo* vmap; struct block** blocks; struct edge** edges; int /*<<< orphan*/ * all_edge_sets; int /*<<< orphan*/ * all_closure_sets; int /*<<< orphan*/ * all_dom_sets; int /*<<< orphan*/ * space; struct block** levels; } ;
typedef  TYPE_1__ opt_state_t ;
typedef  int /*<<< orphan*/  compiler_state_t ;
typedef  int /*<<< orphan*/  bpf_u_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (struct icode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct icode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct icode*) ; 

__attribute__((used)) static void
FUNC7(compiler_state_t *cstate, opt_state_t *opt_state, struct icode *ic)
{
	bpf_u_int32 *p;
	int i, n, max_stmts;

	/*
	 * First, count the blocks, so we can malloc an array to map
	 * block number to block.  Then, put the blocks into the array.
	 */
	FUNC6(ic);
	n = FUNC2(ic, ic->root);
	opt_state->blocks = (struct block **)FUNC1(n, sizeof(*opt_state->blocks));
	if (opt_state->blocks == NULL)
		FUNC0(cstate, "malloc");
	FUNC6(ic);
	opt_state->n_blocks = 0;
	FUNC4(opt_state, ic, ic->root);

	opt_state->n_edges = 2 * opt_state->n_blocks;
	opt_state->edges = (struct edge **)FUNC1(opt_state->n_edges, sizeof(*opt_state->edges));
	if (opt_state->edges == NULL)
		FUNC0(cstate, "malloc");

	/*
	 * The number of levels is bounded by the number of nodes.
	 */
	opt_state->levels = (struct block **)FUNC1(opt_state->n_blocks, sizeof(*opt_state->levels));
	if (opt_state->levels == NULL)
		FUNC0(cstate, "malloc");

	opt_state->edgewords = opt_state->n_edges / (8 * sizeof(bpf_u_int32)) + 1;
	opt_state->nodewords = opt_state->n_blocks / (8 * sizeof(bpf_u_int32)) + 1;

	/* XXX */
	opt_state->space = (bpf_u_int32 *)FUNC3(2 * opt_state->n_blocks * opt_state->nodewords * sizeof(*opt_state->space)
				 + opt_state->n_edges * opt_state->edgewords * sizeof(*opt_state->space));
	if (opt_state->space == NULL)
		FUNC0(cstate, "malloc");
	p = opt_state->space;
	opt_state->all_dom_sets = p;
	for (i = 0; i < n; ++i) {
		opt_state->blocks[i]->dom = p;
		p += opt_state->nodewords;
	}
	opt_state->all_closure_sets = p;
	for (i = 0; i < n; ++i) {
		opt_state->blocks[i]->closure = p;
		p += opt_state->nodewords;
	}
	opt_state->all_edge_sets = p;
	for (i = 0; i < n; ++i) {
		register struct block *b = opt_state->blocks[i];

		b->et.edom = p;
		p += opt_state->edgewords;
		b->ef.edom = p;
		p += opt_state->edgewords;
		b->et.id = i;
		opt_state->edges[i] = &b->et;
		b->ef.id = opt_state->n_blocks + i;
		opt_state->edges[opt_state->n_blocks + i] = &b->ef;
		b->et.pred = b;
		b->ef.pred = b;
	}
	max_stmts = 0;
	for (i = 0; i < n; ++i)
		max_stmts += FUNC5(opt_state->blocks[i]->stmts) + 1;
	/*
	 * We allocate at most 3 value numbers per statement,
	 * so this is an upper bound on the number of valnodes
	 * we'll need.
	 */
	opt_state->maxval = 3 * max_stmts;
	opt_state->vmap = (struct vmapinfo *)FUNC1(opt_state->maxval, sizeof(*opt_state->vmap));
	opt_state->vnode_base = (struct valnode *)FUNC1(opt_state->maxval, sizeof(*opt_state->vnode_base));
	if (opt_state->vmap == NULL || opt_state->vnode_base == NULL)
		FUNC0(cstate, "malloc");
}