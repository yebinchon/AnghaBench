
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {struct name_tree_node* key; } ;
struct name_tree_node {size_t len; int labs; scalar_t__ dclass; struct name_tree_node* parent; int * name; TYPE_1__ node; } ;
typedef int rbtree_type ;
typedef int rbnode_type ;


 int dname_lab_cmp (int *,int,int *,int,int*) ;
 scalar_t__ rbtree_find_less_equal (int *,struct name_tree_node*,int **) ;

struct name_tree_node* name_tree_lookup(rbtree_type* tree, uint8_t* name,
        size_t len, int labs, uint16_t dclass)
{
        rbnode_type* res = ((void*)0);
        struct name_tree_node *result;
        struct name_tree_node key;
        key.node.key = &key;
        key.name = name;
        key.len = len;
        key.labs = labs;
        key.dclass = dclass;
        if(rbtree_find_less_equal(tree, &key, &res)) {

                result = (struct name_tree_node*)res;
        } else {

                int m;
                result = (struct name_tree_node*)res;
                if(!result || result->dclass != dclass)
                        return ((void*)0);

                (void)dname_lab_cmp(result->name, result->labs, key.name,
                        key.labs, &m);
                while(result) {
                        if(result->labs <= m)
                                break;
                        result = result->parent;
                }
        }
 return result;
}
