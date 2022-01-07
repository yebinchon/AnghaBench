
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct TYPE_9__ {int constant_part; } ;
struct TYPE_8__ {int off_nl; TYPE_6__ off_linkpl; } ;
typedef TYPE_2__ compiler_state_t ;


 int BPF_ADD ;
 int BPF_ALU ;
 int BPF_AND ;
 int BPF_B ;
 int BPF_IND ;
 int BPF_K ;
 int BPF_LD ;
 int BPF_LDX ;
 int BPF_LSH ;
 int BPF_MISC ;
 int BPF_MSH ;
 int BPF_TAX ;
 int BPF_X ;
 struct slist* gen_abs_offset_varpart (TYPE_2__*,TYPE_6__*) ;
 struct slist* new_stmt (TYPE_2__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct slist *
gen_loadx_iphdrlen(compiler_state_t *cstate)
{
 struct slist *s, *s2;

 s = gen_abs_offset_varpart(cstate, &cstate->off_linkpl);
 if (s != ((void*)0)) {
  s2 = new_stmt(cstate, BPF_LD|BPF_IND|BPF_B);
  s2->s.k = cstate->off_linkpl.constant_part + cstate->off_nl;
  sappend(s, s2);
  s2 = new_stmt(cstate, BPF_ALU|BPF_AND|BPF_K);
  s2->s.k = 0xf;
  sappend(s, s2);
  s2 = new_stmt(cstate, BPF_ALU|BPF_LSH|BPF_K);
  s2->s.k = 2;
  sappend(s, s2);







  sappend(s, new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_X));
  sappend(s, new_stmt(cstate, BPF_MISC|BPF_TAX));
 } else {
  s = new_stmt(cstate, BPF_LDX|BPF_MSH|BPF_B);
  s->s.k = cstate->off_linkpl.constant_part + cstate->off_nl;
 }
 return s;
}
