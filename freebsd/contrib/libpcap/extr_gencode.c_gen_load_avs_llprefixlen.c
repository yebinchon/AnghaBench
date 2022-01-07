
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int k; } ;
struct slist {TYPE_2__ s; } ;
struct TYPE_6__ {int reg; } ;
struct TYPE_8__ {TYPE_1__ off_linkhdr; } ;
typedef TYPE_3__ compiler_state_t ;


 int BPF_ABS ;
 int BPF_LD ;
 int BPF_MISC ;
 int BPF_ST ;
 int BPF_TAX ;
 int BPF_W ;
 struct slist* new_stmt (TYPE_3__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct slist *
gen_load_avs_llprefixlen(compiler_state_t *cstate)
{
 struct slist *s1, *s2;
 if (cstate->off_linkhdr.reg != -1) {





  s1 = new_stmt(cstate, BPF_LD|BPF_W|BPF_ABS);
  s1->s.k = 4;





  s2 = new_stmt(cstate, BPF_ST);
  s2->s.k = cstate->off_linkhdr.reg;
  sappend(s1, s2);




  s2 = new_stmt(cstate, BPF_MISC|BPF_TAX);
  sappend(s1, s2);

  return (s1);
 } else
  return (((void*)0));
}
