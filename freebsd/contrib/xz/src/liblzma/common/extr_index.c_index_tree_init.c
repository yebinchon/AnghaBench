
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int * rightmost; int * leftmost; int * root; } ;
typedef TYPE_1__ index_tree ;



__attribute__((used)) static void
index_tree_init(index_tree *tree)
{
 tree->root = ((void*)0);
 tree->leftmost = ((void*)0);
 tree->rightmost = ((void*)0);
 tree->count = 0;
 return;
}
