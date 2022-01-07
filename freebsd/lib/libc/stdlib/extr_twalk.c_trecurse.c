
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* rlink; struct TYPE_9__* llink; } ;
typedef TYPE_1__ posix_tnode ;
typedef int (* cmp_fn_t ) (TYPE_1__ const*,int ,int) ;


 int endorder ;
 int leaf ;
 int postorder ;
 int preorder ;
 int stub1 (TYPE_1__ const*,int ,int) ;
 int stub2 (TYPE_1__ const*,int ,int) ;
 int stub3 (TYPE_1__ const*,int ,int) ;
 int stub4 (TYPE_1__ const*,int ,int) ;

__attribute__((used)) static void
trecurse(const posix_tnode *root, cmp_fn_t action, int level)
{

 if (root->llink == ((void*)0) && root->rlink == ((void*)0))
  (*action)(root, leaf, level);
 else {
  (*action)(root, preorder, level);
  if (root->llink != ((void*)0))
   trecurse(root->llink, action, level + 1);
  (*action)(root, postorder, level);
  if (root->rlink != ((void*)0))
   trecurse(root->rlink, action, level + 1);
  (*action)(root, endorder, level);
 }
}
