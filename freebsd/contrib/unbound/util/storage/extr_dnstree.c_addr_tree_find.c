
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {struct addr_tree_node* key; } ;
struct addr_tree_node {int net; int addrlen; int addr; TYPE_1__ node; } ;
typedef int socklen_t ;
typedef int rbtree_type ;
typedef int rbnode_type ;


 int memcpy (int *,struct sockaddr_storage*,int ) ;
 int * rbtree_search (int *,struct addr_tree_node*) ;

struct addr_tree_node* addr_tree_find(rbtree_type* tree,
        struct sockaddr_storage* addr, socklen_t addrlen, int net)
{
        rbnode_type* res = ((void*)0);
        struct addr_tree_node key;
        key.node.key = &key;
        memcpy(&key.addr, addr, addrlen);
        key.addrlen = addrlen;
        key.net = net;
 res = rbtree_search(tree, &key);
 return (struct addr_tree_node*)res;
}
