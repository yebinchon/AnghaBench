
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stmt {int code; } ;
struct slist {int s; struct slist* next; } ;
struct block {int out_use; int s; struct slist* stmts; } ;
struct TYPE_4__ {scalar_t__ done; } ;
typedef TYPE_1__ opt_state_t ;


 int ATOMELEM (int ,int) ;
 int NOP ;
 int N_ATOMS ;
 int deadstmt (TYPE_1__*,int *,struct stmt**) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void
opt_deadstores(opt_state_t *opt_state, register struct block *b)
{
 register struct slist *s;
 register int atom;
 struct stmt *last[N_ATOMS];

 memset((char *)last, 0, sizeof last);

 for (s = b->stmts; s != 0; s = s->next)
  deadstmt(opt_state, &s->s, last);
 deadstmt(opt_state, &b->s, last);

 for (atom = 0; atom < N_ATOMS; ++atom)
  if (last[atom] && !ATOMELEM(b->out_use, atom)) {
   last[atom]->code = NOP;
   opt_state->done = 0;
  }
}
