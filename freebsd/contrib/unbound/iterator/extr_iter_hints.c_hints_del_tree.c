
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_hints {int tree; } ;


 int delhintnode ;
 int traverse_postorder (int *,int *,int *) ;

__attribute__((used)) static void hints_del_tree(struct iter_hints* hints)
{
 traverse_postorder(&hints->tree, &delhintnode, ((void*)0));
}
