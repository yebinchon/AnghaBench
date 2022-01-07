
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrtree {struct addrnode* root; } ;
struct addrnode {int dummy; } ;


 int lru_pop (struct addrtree*,struct addrnode*) ;
 int lru_push (struct addrtree*,struct addrnode*) ;

__attribute__((used)) static void
lru_update(struct addrtree *tree, struct addrnode *node)
{
 if (tree->root == node) return;
 lru_pop(tree, node);
 lru_push(tree, node);
}
