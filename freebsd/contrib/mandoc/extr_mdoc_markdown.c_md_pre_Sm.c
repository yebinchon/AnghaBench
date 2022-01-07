
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {TYPE_1__* child; } ;
struct TYPE_2__ {int string; } ;


 int MD_Sm ;
 int MD_spc ;
 int outflags ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
md_pre_Sm(struct roff_node *n)
{
 if (n->child == ((void*)0))
  outflags ^= MD_Sm;
 else if (strcmp("on", n->child->string) == 0)
  outflags |= MD_Sm;
 else
  outflags &= ~MD_Sm;

 if (outflags & MD_Sm)
  outflags |= MD_spc;

 return 0;
}
