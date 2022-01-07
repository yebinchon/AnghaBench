
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct compress_tree_node {struct compress_tree_node* right; struct compress_tree_node* left; int labs; int dname; } ;


 int dname_lab_cmp (int *,int,int ,int ,int*) ;

__attribute__((used)) static int
compress_tree_search(struct compress_tree_node** tree, uint8_t* dname,
 int labs, struct compress_tree_node** match, int* matchlabels,
 struct compress_tree_node*** insertpt)
{
 int c, n, closen=0;
 struct compress_tree_node* p = *tree;
 struct compress_tree_node* close = 0;
 struct compress_tree_node** prev = tree;
 while(p) {
  if((c = dname_lab_cmp(dname, labs, p->dname, p->labs, &n))
   == 0) {
   *matchlabels = n;
   *match = p;
   return 1;
  }
  if(c<0) {
   prev = &p->left;
   p = p->left;
  } else {
   closen = n;
   close = p;
   prev = &p->right;
   p = p->right;
  }
 }
 *insertpt = prev;
 *matchlabels = closen;
 *match = close;
 return 0;
}
