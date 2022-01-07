
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct TYPE_10__ {scalar_t__ k; } ;
struct block {TYPE_2__ s; struct slist* stmts; } ;
struct TYPE_11__ {int off_linkpl; } ;
typedef TYPE_3__ compiler_state_t ;


 int BPF_ADD ;
 int BPF_ALU ;
 int BPF_IMM ;
 int BPF_JEQ ;
 int BPF_JMP ;
 int BPF_LD ;
 int BPF_MISC ;
 int BPF_TAX ;
 int BPF_X ;
 int OR_TRAN_IPV6 ;
 struct slist* gen_abs_offset_varpart (TYPE_3__*,int *) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_geneve_check (TYPE_3__*,int ,int ,int) ;
 int gen_port6 ;
 struct block* new_block (TYPE_3__*,int) ;
 struct slist* new_stmt (TYPE_3__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct block *
gen_geneve6(compiler_state_t *cstate, int vni)
{
 struct block *b0, *b1;
 struct slist *s, *s1;

 b0 = gen_geneve_check(cstate, gen_port6, OR_TRAN_IPV6, vni);



 s = gen_abs_offset_varpart(cstate, &cstate->off_linkpl);
 if (s) {
  s1 = new_stmt(cstate, BPF_LD|BPF_IMM);
  s1->s.k = 40;
  sappend(s, s1);

  s1 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_X);
  s1->s.k = 0;
  sappend(s, s1);
 } else {
  s = new_stmt(cstate, BPF_LD|BPF_IMM);
  s->s.k = 40;
 }




 s1 = new_stmt(cstate, BPF_MISC|BPF_TAX);
 sappend(s, s1);

 b1 = new_block(cstate, BPF_JMP|BPF_JEQ|BPF_X);
 b1->stmts = s;
 b1->s.k = 0;

 gen_and(b0, b1);

 return b1;
}
