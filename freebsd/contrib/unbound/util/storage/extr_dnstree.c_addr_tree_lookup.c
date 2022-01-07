
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {struct addr_tree_node* key; } ;
struct addr_tree_node {scalar_t__ addrlen; int net; struct addr_tree_node* parent; int addr; TYPE_1__ node; } ;
typedef scalar_t__ socklen_t ;
typedef int rbtree_type ;
typedef int rbnode_type ;


 int addr_in_common (int *,int,struct sockaddr_storage*,int,scalar_t__) ;
 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,scalar_t__) ;
 int memcpy (int *,struct sockaddr_storage*,scalar_t__) ;
 scalar_t__ rbtree_find_less_equal (int *,struct addr_tree_node*,int **) ;

struct addr_tree_node* addr_tree_lookup(rbtree_type* tree,
        struct sockaddr_storage* addr, socklen_t addrlen)
{
        rbnode_type* res = ((void*)0);
        struct addr_tree_node* result;
        struct addr_tree_node key;
        key.node.key = &key;
        memcpy(&key.addr, addr, addrlen);
        key.addrlen = addrlen;
        key.net = (addr_is_ip6(addr, addrlen)?128:32);
        if(rbtree_find_less_equal(tree, &key, &res)) {

                return (struct addr_tree_node*)res;
        } else {

                int m;
                result = (struct addr_tree_node*)res;
                if(!result || result->addrlen != addrlen)
                        return 0;

                m = addr_in_common(&result->addr, result->net, addr,
                        key.net, addrlen);
                while(result) {
                        if(result->net <= m)
                                break;
                        result = result->parent;
                }
        }
        return result;
}
