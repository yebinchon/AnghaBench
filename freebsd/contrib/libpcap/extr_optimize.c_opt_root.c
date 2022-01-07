
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slist {int dummy; } ;
struct TYPE_2__ {int code; } ;
struct block {struct slist* stmts; TYPE_1__ s; } ;


 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_JMP ;
 scalar_t__ BPF_RET ;
 struct block* JF (struct block*) ;
 struct block* JT (struct block*) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static void
opt_root(struct block **b)
{
 struct slist *tmp, *s;

 s = (*b)->stmts;
 (*b)->stmts = 0;
 while (BPF_CLASS((*b)->s.code) == BPF_JMP && JT(*b) == JF(*b))
  *b = JT(*b);

 tmp = (*b)->stmts;
 if (tmp != 0)
  sappend(s, tmp);
 (*b)->stmts = s;






 if (BPF_CLASS((*b)->s.code) == BPF_RET)
  (*b)->stmts = 0;
}
