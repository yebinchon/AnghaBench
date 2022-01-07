
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int code; } ;
struct slist {TYPE_7__ s; struct slist* next; } ;
struct edge {TYPE_1__* pred; struct edge* next; } ;
struct TYPE_14__ {int code; int k; } ;
struct TYPE_13__ {int code; } ;
struct TYPE_12__ {int code; } ;
struct block {scalar_t__* val; scalar_t__ out_use; scalar_t__ oval; TYPE_4__ s; TYPE_3__ ef; TYPE_2__ et; struct slist* stmts; struct edge* in_edges; } ;
struct TYPE_15__ {scalar_t__ done; } ;
typedef TYPE_5__ opt_state_t ;
typedef int compiler_state_t ;
typedef scalar_t__ bpf_int32 ;
struct TYPE_11__ {scalar_t__* val; } ;


 size_t A_ATOM ;
 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_JMP ;
 scalar_t__ BPF_K ;
 scalar_t__ BPF_RET ;
 scalar_t__ BPF_SRC (int ) ;
 scalar_t__ K (int ) ;
 int N_ATOMS ;
 scalar_t__ VAL_UNKNOWN ;
 size_t X_ATOM ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int opt_deadstores (TYPE_5__*,struct block*) ;
 int opt_peep (TYPE_5__*,struct block*) ;
 int opt_stmt (int *,TYPE_5__*,TYPE_7__*,scalar_t__*,int) ;

__attribute__((used)) static void
opt_blk(compiler_state_t *cstate, opt_state_t *opt_state,
    struct block *b, int do_stmts)
{
 struct slist *s;
 struct edge *p;
 int i;
 bpf_int32 aval, xval;
 p = b->in_edges;
 if (p == 0) {




  memset((char *)b->val, 0, sizeof(b->val));
 } else {






  memcpy((char *)b->val, (char *)p->pred->val, sizeof(b->val));
  while ((p = p->next) != ((void*)0)) {
   for (i = 0; i < N_ATOMS; ++i)
    if (b->val[i] != p->pred->val[i])
     b->val[i] = 0;
  }
 }
 aval = b->val[A_ATOM];
 xval = b->val[X_ATOM];
 for (s = b->stmts; s; s = s->next)
  opt_stmt(cstate, opt_state, &s->s, b->val, do_stmts);
 if (do_stmts &&
     ((b->out_use == 0 &&
       aval != VAL_UNKNOWN && b->val[A_ATOM] == aval &&
       xval != VAL_UNKNOWN && b->val[X_ATOM] == xval) ||
      BPF_CLASS(b->s.code) == BPF_RET)) {
  if (b->stmts != 0) {
   b->stmts = 0;
   opt_state->done = 0;
  }
 } else {
  opt_peep(opt_state, b);
  opt_deadstores(opt_state, b);
 }



 if (BPF_SRC(b->s.code) == BPF_K)
  b->oval = K(b->s.k);
 else
  b->oval = b->val[X_ATOM];
 b->et.code = b->s.code;
 b->ef.code = -b->s.code;
}
