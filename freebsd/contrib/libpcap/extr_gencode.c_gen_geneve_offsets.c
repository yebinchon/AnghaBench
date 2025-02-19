
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int k; struct slist* jf; struct slist* jt; } ;
struct slist {TYPE_4__ s; } ;
struct TYPE_12__ {int constant_part; int reg; int is_variable; } ;
struct TYPE_11__ {int reg; int is_variable; scalar_t__ constant_part; } ;
struct TYPE_10__ {int reg; } ;
struct TYPE_14__ {int off_nl; int no_optimize; TYPE_3__ off_linkpl; TYPE_2__ off_linktype; TYPE_1__ off_linkhdr; } ;
typedef TYPE_5__ compiler_state_t ;


 int BPF_ADD ;
 int BPF_ALU ;
 int BPF_AND ;
 int BPF_B ;
 int BPF_H ;
 int BPF_IND ;
 int BPF_JEQ ;
 int BPF_K ;
 int BPF_LD ;
 int BPF_LDX ;
 int BPF_MEM ;
 int BPF_MISC ;
 int BPF_MUL ;
 int BPF_ST ;
 int BPF_STX ;
 int BPF_TAX ;
 int BPF_TXA ;
 int BPF_X ;
 int DLT_EN10MB ;
 int ETHERTYPE_TEB ;
 int JMP (int ) ;
 int PUSH_LINKHDR (TYPE_5__*,int ,int,int ,void*) ;
 void* alloc_reg (TYPE_5__*) ;
 struct slist* new_stmt (TYPE_5__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct slist *
gen_geneve_offsets(compiler_state_t *cstate)
{
 struct slist *s, *s1, *s_proto;






 s = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s->s.k = cstate->off_linkpl.constant_part + cstate->off_nl + 8;


 s1 = new_stmt(cstate, BPF_MISC|BPF_TAX);
 sappend(s, s1);



 s1 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s1->s.k = 2;
 sappend(s, s1);

 cstate->off_linktype.reg = alloc_reg(cstate);
 cstate->off_linktype.is_variable = 1;
 cstate->off_linktype.constant_part = 0;

 s1 = new_stmt(cstate, BPF_ST);
 s1->s.k = cstate->off_linktype.reg;
 sappend(s, s1);




 s1 = new_stmt(cstate, BPF_LD|BPF_IND|BPF_B);
 s1->s.k = 0;
 sappend(s, s1);

 s1 = new_stmt(cstate, BPF_ALU|BPF_AND|BPF_K);
 s1->s.k = 0x3f;
 sappend(s, s1);

 s1 = new_stmt(cstate, BPF_ALU|BPF_MUL|BPF_K);
 s1->s.k = 4;
 sappend(s, s1);


 s1 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s1->s.k = 8;
 sappend(s, s1);


 s1 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_X);
 s1->s.k = 0;
 sappend(s, s1);
 PUSH_LINKHDR(cstate, DLT_EN10MB, 1, 0, alloc_reg(cstate));

 s1 = new_stmt(cstate, BPF_ST);
 s1->s.k = cstate->off_linkhdr.reg;
 sappend(s, s1);







 cstate->no_optimize = 1;


 s1 = new_stmt(cstate, BPF_LD|BPF_IND|BPF_H);
 s1->s.k = 2;
 sappend(s, s1);


 s1 = new_stmt(cstate, BPF_LDX|BPF_MEM);
 s1->s.k = cstate->off_linkhdr.reg;
 sappend(s, s1);




 s_proto = new_stmt(cstate, JMP(BPF_JEQ));
 s_proto->s.k = ETHERTYPE_TEB;
 sappend(s, s_proto);

 s1 = new_stmt(cstate, BPF_MISC|BPF_TXA);
 sappend(s, s1);
 s_proto->s.jt = s1;



 s1 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s1->s.k = 12;
 sappend(s, s1);

 s1 = new_stmt(cstate, BPF_ST);
 s1->s.k = cstate->off_linktype.reg;
 sappend(s, s1);



 s1 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s1->s.k = 2;
 sappend(s, s1);


 s1 = new_stmt(cstate, BPF_MISC|BPF_TAX);
 sappend(s, s1);


 cstate->off_linkpl.reg = alloc_reg(cstate);
 cstate->off_linkpl.is_variable = 1;
 cstate->off_linkpl.constant_part = 0;

 s1 = new_stmt(cstate, BPF_STX);
 s1->s.k = cstate->off_linkpl.reg;
 sappend(s, s1);
 s_proto->s.jf = s1;

 cstate->off_nl = 0;

 return s;
}
