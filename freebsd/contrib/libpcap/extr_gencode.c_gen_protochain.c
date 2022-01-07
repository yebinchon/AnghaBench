
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int k; struct slist* jt; struct slist* jf; } ;
struct slist {struct slist* next; TYPE_2__ s; } ;
struct TYPE_15__ {int k; } ;
struct block {TYPE_3__ s; struct slist* stmts; } ;
typedef int s ;
struct TYPE_13__ {int constant_part; scalar_t__ is_variable; } ;
struct TYPE_16__ {int no_optimize; int off_nl; TYPE_1__ off_linkpl; } ;
typedef TYPE_4__ compiler_state_t ;


 int BPF_ABS ;
 int BPF_ADD ;
 int BPF_ALU ;
 int BPF_B ;
 int BPF_IMM ;
 int BPF_IND ;
 int BPF_JA ;
 int BPF_JEQ ;
 int BPF_JMP ;
 int BPF_K ;
 int BPF_LD ;
 int BPF_LDX ;
 int BPF_MEM ;
 int BPF_MISC ;
 int BPF_MSH ;
 int BPF_MUL ;
 int BPF_ST ;
 int BPF_TAX ;
 int BPF_TXA ;
 int BPF_X ;
 int ETHERTYPE_IP ;
 int ETHERTYPE_IPV6 ;
 int IPPROTO_AH ;
 int IPPROTO_DSTOPTS ;
 int IPPROTO_FRAGMENT ;
 int IPPROTO_HOPOPTS ;
 int IPPROTO_NONE ;
 int IPPROTO_ROUTING ;
 int JMP (int) ;



 int alloc_reg (TYPE_4__*) ;
 int bpf_error (TYPE_4__*,char*) ;
 int free_reg (TYPE_4__*,int) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_linktype (TYPE_4__*,int ) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_proto (TYPE_4__*,int,int,int) ;
 int memset (struct slist**,int ,int) ;
 struct block* new_block (TYPE_4__*,int ) ;
 struct slist* new_stmt (TYPE_4__*,int) ;

__attribute__((used)) static struct block *
gen_protochain(compiler_state_t *cstate, int v, int proto, int dir)
{



 struct block *b0, *b;
 struct slist *s[100];
 int fix2, fix3, fix4, fix5;
 int ahcheck, again, end;
 int i, max;
 int reg2 = alloc_reg(cstate);

 memset(s, 0, sizeof(s));
 fix3 = fix4 = fix5 = 0;

 switch (proto) {
 case 129:
 case 128:
  break;
 case 130:
  b0 = gen_protochain(cstate, v, 129, dir);
  b = gen_protochain(cstate, v, 128, dir);
  gen_or(b0, b);
  return b;
 default:
  bpf_error(cstate, "bad protocol applied for 'protochain'");

 }
 if (cstate->off_linkpl.is_variable)
  bpf_error(cstate, "'protochain' not supported with variable length headers");

 cstate->no_optimize = 1;






 i = 0;
 s[i] = new_stmt(cstate, 0);
 i++;

 switch (proto) {
 case 129:
  b0 = gen_linktype(cstate, ETHERTYPE_IP);


  s[i] = new_stmt(cstate, BPF_LD|BPF_ABS|BPF_B);
  s[i]->s.k = cstate->off_linkpl.constant_part + cstate->off_nl + 9;
  i++;

  s[i] = new_stmt(cstate, BPF_LDX|BPF_MSH|BPF_B);
  s[i]->s.k = cstate->off_linkpl.constant_part + cstate->off_nl;
  i++;
  break;

 case 128:
  b0 = gen_linktype(cstate, ETHERTYPE_IPV6);


  s[i] = new_stmt(cstate, BPF_LD|BPF_ABS|BPF_B);
  s[i]->s.k = cstate->off_linkpl.constant_part + cstate->off_nl + 6;
  i++;

  s[i] = new_stmt(cstate, BPF_LDX|BPF_IMM);
  s[i]->s.k = 40;
  i++;
  break;

 default:
  bpf_error(cstate, "unsupported proto to gen_protochain");

 }


 again = i;
 s[i] = new_stmt(cstate, BPF_JMP|BPF_JEQ|BPF_K);
 s[i]->s.k = v;
 s[i]->s.jt = ((void*)0);
 s[i]->s.jf = ((void*)0);
 fix5 = i;
 i++;





 s[i] = new_stmt(cstate, BPF_JMP|BPF_JEQ|BPF_K);
 s[i]->s.jt = ((void*)0);
 s[i]->s.jf = ((void*)0);
 s[i]->s.k = 59;
 s[fix5]->s.jf = s[i];
 fix2 = i;
 i++;

 if (proto == 128) {
  int v6start, v6end, v6advance, j;

  v6start = i;

  s[i] = new_stmt(cstate, BPF_JMP|BPF_JEQ|BPF_K);
  s[i]->s.jt = ((void*)0);
  s[i]->s.jf = ((void*)0);
  s[i]->s.k = IPPROTO_HOPOPTS;
  s[fix2]->s.jf = s[i];
  i++;

  s[i - 1]->s.jf = s[i] = new_stmt(cstate, BPF_JMP|BPF_JEQ|BPF_K);
  s[i]->s.jt = ((void*)0);
  s[i]->s.jf = ((void*)0);
  s[i]->s.k = IPPROTO_DSTOPTS;
  i++;

  s[i - 1]->s.jf = s[i] = new_stmt(cstate, BPF_JMP|BPF_JEQ|BPF_K);
  s[i]->s.jt = ((void*)0);
  s[i]->s.jf = ((void*)0);
  s[i]->s.k = IPPROTO_ROUTING;
  i++;

  s[i - 1]->s.jf = s[i] = new_stmt(cstate, BPF_JMP|BPF_JEQ|BPF_K);
  s[i]->s.jt = ((void*)0);
  s[i]->s.jf = ((void*)0);
  s[i]->s.k = IPPROTO_FRAGMENT;
  fix3 = i;
  v6end = i;
  i++;


  v6advance = i;







  s[i] = new_stmt(cstate, BPF_LD|BPF_IND|BPF_B);
  s[i]->s.k = cstate->off_linkpl.constant_part + cstate->off_nl;
  i++;

  s[i] = new_stmt(cstate, BPF_ST);
  s[i]->s.k = reg2;
  i++;

  s[i] = new_stmt(cstate, BPF_LD|BPF_IND|BPF_B);
  s[i]->s.k = cstate->off_linkpl.constant_part + cstate->off_nl + 1;
  i++;

  s[i] = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
  s[i]->s.k = 1;
  i++;

  s[i] = new_stmt(cstate, BPF_ALU|BPF_MUL|BPF_K);
  s[i]->s.k = 8;
  i++;

  s[i] = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_X);
  s[i]->s.k = 0;
  i++;

  s[i] = new_stmt(cstate, BPF_MISC|BPF_TAX);
  i++;

  s[i] = new_stmt(cstate, BPF_LD|BPF_MEM);
  s[i]->s.k = reg2;
  i++;


  s[i] = new_stmt(cstate, BPF_JMP|BPF_JA);
  s[i]->s.k = again - i - 1;
  s[i - 1]->s.jf = s[i];
  i++;


  for (j = v6start; j <= v6end; j++)
   s[j]->s.jt = s[v6advance];
 } else {

  s[i] = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
  s[i]->s.k = 0;
  s[fix2]->s.jf = s[i];
  i++;
 }


 ahcheck = i;

 s[i] = new_stmt(cstate, BPF_JMP|BPF_JEQ|BPF_K);
 s[i]->s.jt = ((void*)0);
 s[i]->s.jf = ((void*)0);
 s[i]->s.k = IPPROTO_AH;
 if (fix3)
  s[fix3]->s.jf = s[ahcheck];
 fix4 = i;
 i++;







 s[i - 1]->s.jt = s[i] = new_stmt(cstate, BPF_MISC|BPF_TXA);
 i++;

 s[i] = new_stmt(cstate, BPF_LD|BPF_IND|BPF_B);
 s[i]->s.k = cstate->off_linkpl.constant_part + cstate->off_nl;
 i++;

 s[i] = new_stmt(cstate, BPF_ST);
 s[i]->s.k = reg2;
 i++;

 s[i - 1]->s.jt = s[i] = new_stmt(cstate, BPF_MISC|BPF_TXA);
 i++;

 s[i] = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s[i]->s.k = 1;
 i++;

 s[i] = new_stmt(cstate, BPF_MISC|BPF_TAX);
 i++;

 s[i] = new_stmt(cstate, BPF_LD|BPF_IND|BPF_B);
 s[i]->s.k = cstate->off_linkpl.constant_part + cstate->off_nl;
 i++;

 s[i] = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s[i]->s.k = 2;
 i++;

 s[i] = new_stmt(cstate, BPF_ALU|BPF_MUL|BPF_K);
 s[i]->s.k = 4;
 i++;

 s[i] = new_stmt(cstate, BPF_MISC|BPF_TAX);
 i++;

 s[i] = new_stmt(cstate, BPF_LD|BPF_MEM);
 s[i]->s.k = reg2;
 i++;


 s[i] = new_stmt(cstate, BPF_JMP|BPF_JA);
 s[i]->s.k = again - i - 1;
 i++;


 end = i;
 s[i] = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s[i]->s.k = 0;
 s[fix2]->s.jt = s[end];
 s[fix4]->s.jf = s[end];
 s[fix5]->s.jt = s[end];
 i++;




 max = i;
 for (i = 0; i < max - 1; i++)
  s[i]->next = s[i + 1];
 s[max - 1]->next = ((void*)0);




 b = new_block(cstate, JMP(BPF_JEQ));
 b->stmts = s[1];
 b->s.k = v;

 free_reg(cstate, reg2);

 gen_and(b0, b);
 return b;

}
