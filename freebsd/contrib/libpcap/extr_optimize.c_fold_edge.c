
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct edge {int code; TYPE_2__* pred; } ;
struct TYPE_3__ {int code; } ;
struct block {int* val; int oval; TYPE_1__ s; } ;
struct TYPE_4__ {int* val; int oval; } ;


 size_t A_ATOM ;
 int BPF_JEQ ;
 int BPF_JMP ;
 int BPF_K ;
 struct block* JF (struct block*) ;
 struct block* JT (struct block*) ;

__attribute__((used)) static struct block *
fold_edge(struct block *child, struct edge *ep)
{
 int sense;
 int aval0, aval1, oval0, oval1;
 int code = ep->code;

 if (code < 0) {
  code = -code;
  sense = 0;
 } else
  sense = 1;

 if (child->s.code != code)
  return 0;

 aval0 = child->val[A_ATOM];
 oval0 = child->oval;
 aval1 = ep->pred->val[A_ATOM];
 oval1 = ep->pred->oval;

 if (aval0 != aval1)
  return 0;

 if (oval0 == oval1)





  return sense ? JT(child) : JF(child);

 if (sense && code == (BPF_JMP|BPF_JEQ|BPF_K))
  return JF(child);

 return 0;
}
