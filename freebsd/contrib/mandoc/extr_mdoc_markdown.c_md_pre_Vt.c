
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int type; } ;





 int md_pre_raw (struct roff_node*) ;
 int md_pre_syn (struct roff_node*) ;

__attribute__((used)) static int
md_pre_Vt(struct roff_node *n)
{
 switch (n->type) {
 case 130:
  md_pre_syn(n);
  return 1;
 case 129:
 case 128:
  md_pre_raw(n);
  return 1;
 default:
  return 0;
 }
}
