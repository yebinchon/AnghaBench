
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {struct addr_tree_node* key; } ;
struct addr_tree_node {int net; TYPE_1__ node; int * parent; int addrlen; int addr; } ;
typedef int socklen_t ;
typedef int rbtree_type ;


 int memcpy (int *,struct sockaddr_storage*,int ) ;
 int * rbtree_insert (int *,TYPE_1__*) ;

int addr_tree_insert(rbtree_type* tree, struct addr_tree_node* node,
        struct sockaddr_storage* addr, socklen_t addrlen, int net)
{
 node->node.key = node;
 memcpy(&node->addr, addr, addrlen);
 node->addrlen = addrlen;
 node->net = net;
 node->parent = ((void*)0);
 return rbtree_insert(tree, &node->node) != ((void*)0);
}
