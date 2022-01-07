
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct compress_tree_node {int labs; struct compress_tree_node* parent; } ;


 scalar_t__ compress_tree_search (struct compress_tree_node**,int *,int,struct compress_tree_node**,int*,struct compress_tree_node***) ;

__attribute__((used)) static struct compress_tree_node*
compress_tree_lookup(struct compress_tree_node** tree, uint8_t* dname,
 int labs, struct compress_tree_node*** insertpt)
{
 struct compress_tree_node* p;
 int m;
 if(labs <= 1)
  return 0;
 if(compress_tree_search(tree, dname, labs, &p, &m, insertpt)) {

  return p;
 }

 if(m>1) {


  while(p && p->labs > m)
   p = p->parent;
  return p;
 }
 return 0;
}
