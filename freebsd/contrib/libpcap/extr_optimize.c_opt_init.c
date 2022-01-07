
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vmapinfo {int dummy; } ;
struct valnode {int dummy; } ;
struct icode {int root; } ;
struct edge {int id; struct block* pred; int * edom; } ;
struct block {int stmts; struct edge ef; struct edge et; int * closure; int * dom; } ;
struct TYPE_4__ {int n_blocks; int n_edges; int edgewords; int nodewords; int maxval; struct valnode* vnode_base; struct vmapinfo* vmap; struct block** blocks; struct edge** edges; int * all_edge_sets; int * all_closure_sets; int * all_dom_sets; int * space; struct block** levels; } ;
typedef TYPE_1__ opt_state_t ;
typedef int compiler_state_t ;
typedef int bpf_u_int32 ;


 int bpf_error (int *,char*) ;
 scalar_t__ calloc (int,int) ;
 int count_blocks (struct icode*,int ) ;
 scalar_t__ malloc (int) ;
 int number_blks_r (TYPE_1__*,struct icode*,int ) ;
 scalar_t__ slength (int ) ;
 int unMarkAll (struct icode*) ;

__attribute__((used)) static void
opt_init(compiler_state_t *cstate, opt_state_t *opt_state, struct icode *ic)
{
 bpf_u_int32 *p;
 int i, n, max_stmts;





 unMarkAll(ic);
 n = count_blocks(ic, ic->root);
 opt_state->blocks = (struct block **)calloc(n, sizeof(*opt_state->blocks));
 if (opt_state->blocks == ((void*)0))
  bpf_error(cstate, "malloc");
 unMarkAll(ic);
 opt_state->n_blocks = 0;
 number_blks_r(opt_state, ic, ic->root);

 opt_state->n_edges = 2 * opt_state->n_blocks;
 opt_state->edges = (struct edge **)calloc(opt_state->n_edges, sizeof(*opt_state->edges));
 if (opt_state->edges == ((void*)0))
  bpf_error(cstate, "malloc");




 opt_state->levels = (struct block **)calloc(opt_state->n_blocks, sizeof(*opt_state->levels));
 if (opt_state->levels == ((void*)0))
  bpf_error(cstate, "malloc");

 opt_state->edgewords = opt_state->n_edges / (8 * sizeof(bpf_u_int32)) + 1;
 opt_state->nodewords = opt_state->n_blocks / (8 * sizeof(bpf_u_int32)) + 1;


 opt_state->space = (bpf_u_int32 *)malloc(2 * opt_state->n_blocks * opt_state->nodewords * sizeof(*opt_state->space)
     + opt_state->n_edges * opt_state->edgewords * sizeof(*opt_state->space));
 if (opt_state->space == ((void*)0))
  bpf_error(cstate, "malloc");
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
  max_stmts += slength(opt_state->blocks[i]->stmts) + 1;





 opt_state->maxval = 3 * max_stmts;
 opt_state->vmap = (struct vmapinfo *)calloc(opt_state->maxval, sizeof(*opt_state->vmap));
 opt_state->vnode_base = (struct valnode *)calloc(opt_state->maxval, sizeof(*opt_state->vnode_base));
 if (opt_state->vmap == ((void*)0) || opt_state->vnode_base == ((void*)0))
  bpf_error(cstate, "malloc");
}
