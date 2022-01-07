
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrtree {int env; int (* delfunc ) (int ,int *) ;scalar_t__ (* sizefunc ) (int *) ;int size_bytes; } ;
struct addrnode {int * elem; } ;


 scalar_t__ stub1 (int *) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static void
clean_node(struct addrtree *tree, struct addrnode *node)
{
 if (!node->elem) return;
 tree->size_bytes -= tree->sizefunc(node->elem);
 tree->delfunc(tree->env, node->elem);
 node->elem = ((void*)0);
}
