
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int type; int * child; } ;




 int md_post_Fn (struct roff_node*) ;
 int md_post_raw (struct roff_node*) ;

__attribute__((used)) static void
md_post_Fo(struct roff_node *n)
{
 switch (n->type) {
 case 128:
  if (n->child != ((void*)0))
   md_post_raw(n);
  break;
 case 129:
  md_post_Fn(n);
  break;
 default:
  break;
 }
}
