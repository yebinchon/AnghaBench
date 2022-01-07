
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int k; struct slist* jf; struct slist* jt; } ;
struct slist {TYPE_2__ s; } ;
struct TYPE_6__ {int reg; } ;
struct TYPE_8__ {int no_optimize; TYPE_1__ off_linkhdr; } ;
typedef TYPE_3__ compiler_state_t ;


 int BPF_ABS ;
 int BPF_ALU ;
 int BPF_AND ;
 int BPF_IMM ;
 int BPF_JA ;
 int BPF_JEQ ;
 int BPF_K ;
 int BPF_LD ;
 int BPF_MISC ;
 int BPF_ST ;
 int BPF_TAX ;
 int BPF_W ;
 int JMP (int ) ;
 struct slist* new_stmt (TYPE_3__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct slist *
gen_load_prism_llprefixlen(compiler_state_t *cstate)
{
 struct slist *s1, *s2;
 struct slist *sjeq_avs_cookie;
 struct slist *sjcommon;






 cstate->no_optimize = 1;
 if (cstate->off_linkhdr.reg != -1) {



  s1 = new_stmt(cstate, BPF_LD|BPF_W|BPF_ABS);
  s1->s.k = 0;




  s2 = new_stmt(cstate, BPF_ALU|BPF_AND|BPF_K);
  s2->s.k = 0xFFFFF000;
  sappend(s1, s2);




  sjeq_avs_cookie = new_stmt(cstate, JMP(BPF_JEQ));
  sjeq_avs_cookie->s.k = 0x80211000;
  sappend(s1, sjeq_avs_cookie);
  s2 = new_stmt(cstate, BPF_LD|BPF_W|BPF_ABS);
  s2->s.k = 4;
  sappend(s1, s2);
  sjeq_avs_cookie->s.jt = s2;
  sjcommon = new_stmt(cstate, JMP(BPF_JA));
  sjcommon->s.k = 1;
  sappend(s1, sjcommon);







  s2 = new_stmt(cstate, BPF_LD|BPF_W|BPF_IMM);
  s2->s.k = 144;
  sappend(s1, s2);
  sjeq_avs_cookie->s.jf = s2;






  s2 = new_stmt(cstate, BPF_ST);
  s2->s.k = cstate->off_linkhdr.reg;
  sappend(s1, s2);
  sjcommon->s.jf = s2;




  s2 = new_stmt(cstate, BPF_MISC|BPF_TAX);
  sappend(s1, s2);

  return (s1);
 } else
  return (((void*)0));
}
