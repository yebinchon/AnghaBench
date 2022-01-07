
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int type; } ;




 int md_post_raw (struct roff_node*) ;

__attribute__((used)) static void
md_post_Vt(struct roff_node *n)
{
 switch (n->type) {
 case 129:
 case 128:
  md_post_raw(n);
  break;
 default:
  break;
 }
}
