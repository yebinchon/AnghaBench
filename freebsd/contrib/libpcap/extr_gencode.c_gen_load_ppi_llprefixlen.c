
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct TYPE_7__ {int reg; } ;
struct TYPE_8__ {TYPE_2__ off_linkhdr; } ;
typedef TYPE_3__ compiler_state_t ;


 int BPF_ABS ;
 int BPF_ALU ;
 int BPF_B ;
 int BPF_K ;
 int BPF_LD ;
 int BPF_LSH ;
 int BPF_MISC ;
 int BPF_OR ;
 int BPF_ST ;
 int BPF_TAX ;
 int BPF_X ;
 struct slist* new_stmt (TYPE_3__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct slist *
gen_load_ppi_llprefixlen(compiler_state_t *cstate)
{
 struct slist *s1, *s2;






 if (cstate->off_linkhdr.reg != -1) {
  s1 = new_stmt(cstate, BPF_LD|BPF_B|BPF_ABS);
  s1->s.k = 3;
  s2 = new_stmt(cstate, BPF_ALU|BPF_LSH|BPF_K);
  sappend(s1, s2);
  s2->s.k = 8;
  s2 = new_stmt(cstate, BPF_MISC|BPF_TAX);
  sappend(s1, s2);





  s2 = new_stmt(cstate, BPF_LD|BPF_B|BPF_ABS);
  sappend(s1, s2);
  s2->s.k = 2;
  s2 = new_stmt(cstate, BPF_ALU|BPF_OR|BPF_X);
  sappend(s1, s2);





  s2 = new_stmt(cstate, BPF_ST);
  s2->s.k = cstate->off_linkhdr.reg;
  sappend(s1, s2);




  s2 = new_stmt(cstate, BPF_MISC|BPF_TAX);
  sappend(s1, s2);

  return (s1);
 } else
  return (((void*)0));
}
