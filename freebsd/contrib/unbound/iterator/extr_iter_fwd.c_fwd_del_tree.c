
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_forwards {scalar_t__ tree; } ;


 int delfwdnode ;
 int free (scalar_t__) ;
 int traverse_postorder (scalar_t__,int *,int *) ;

__attribute__((used)) static void fwd_del_tree(struct iter_forwards* fwd)
{
 if(fwd->tree)
  traverse_postorder(fwd->tree, &delfwdnode, ((void*)0));
 free(fwd->tree);
}
