
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int type; } ;


 int MD_Bk ;


 int outflags ;

__attribute__((used)) static int
md_pre_Bk(struct roff_node *n)
{
 switch (n->type) {
 case 129:
  return 1;
 case 128:
  outflags |= MD_Bk;
  return 1;
 default:
  return 0;
 }
}
