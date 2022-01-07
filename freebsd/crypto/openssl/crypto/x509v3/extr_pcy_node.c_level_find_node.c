
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* data; struct TYPE_9__ const* parent; } ;
typedef TYPE_2__ X509_POLICY_NODE ;
struct TYPE_10__ {int nodes; } ;
typedef TYPE_3__ X509_POLICY_LEVEL ;
struct TYPE_8__ {int valid_policy; } ;
typedef int ASN1_OBJECT ;


 int OBJ_cmp (int ,int const*) ;
 int sk_X509_POLICY_NODE_num (int ) ;
 TYPE_2__* sk_X509_POLICY_NODE_value (int ,int) ;

X509_POLICY_NODE *level_find_node(const X509_POLICY_LEVEL *level,
                                  const X509_POLICY_NODE *parent,
                                  const ASN1_OBJECT *id)
{
    X509_POLICY_NODE *node;
    int i;
    for (i = 0; i < sk_X509_POLICY_NODE_num(level->nodes); i++) {
        node = sk_X509_POLICY_NODE_value(level->nodes, i);
        if (node->parent == parent) {
            if (!OBJ_cmp(node->data->valid_policy, id))
                return node;
        }
    }
    return ((void*)0);
}
