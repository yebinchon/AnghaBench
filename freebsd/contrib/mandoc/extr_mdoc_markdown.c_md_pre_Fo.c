
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int type; int * child; } ;


 int MD_nl ;
 int MD_spc ;



 int md_pre_raw (struct roff_node*) ;
 int md_pre_syn (struct roff_node*) ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_Fo(struct roff_node *n)
{
 switch (n->type) {
 case 130:
  md_pre_syn(n);
  break;
 case 128:
  if (n->child == ((void*)0))
   return 0;
  md_pre_raw(n);
  break;
 case 129:
  outflags &= ~(MD_spc | MD_nl);
  md_word("(");
  break;
 default:
  break;
 }
 return 1;
}
