
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int type; } ;


 int MD_Bk ;



 int md_post_raw (struct roff_node*) ;
 int outflags ;

__attribute__((used)) static void
md_post_Nm(struct roff_node *n)
{
 switch (n->type) {
 case 130:
  outflags &= ~MD_Bk;
  break;
 case 128:
 case 129:
  md_post_raw(n);
  break;
 default:
  break;
 }
}
