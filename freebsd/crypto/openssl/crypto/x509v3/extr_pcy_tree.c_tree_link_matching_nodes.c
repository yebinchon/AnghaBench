
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509_POLICY_NODE ;
struct TYPE_8__ {int * anyPolicy; int nodes; } ;
typedef TYPE_1__ X509_POLICY_LEVEL ;
struct TYPE_9__ {int valid_policy; } ;
typedef TYPE_2__ X509_POLICY_DATA ;


 int * level_add_node (TYPE_1__*,TYPE_2__*,int *,int *) ;
 scalar_t__ policy_node_match (TYPE_1__*,int *,int ) ;
 int sk_X509_POLICY_NODE_num (int ) ;
 int * sk_X509_POLICY_NODE_value (int ,int) ;

__attribute__((used)) static int tree_link_matching_nodes(X509_POLICY_LEVEL *curr,
                                    X509_POLICY_DATA *data)
{
    X509_POLICY_LEVEL *last = curr - 1;
    int i, matched = 0;


    for (i = 0; i < sk_X509_POLICY_NODE_num(last->nodes); i++) {
        X509_POLICY_NODE *node = sk_X509_POLICY_NODE_value(last->nodes, i);

        if (policy_node_match(last, node, data->valid_policy)) {
            if (level_add_node(curr, data, node, ((void*)0)) == ((void*)0))
                return 0;
            matched = 1;
        }
    }
    if (!matched && last->anyPolicy) {
        if (level_add_node(curr, data, last->anyPolicy, ((void*)0)) == ((void*)0))
            return 0;
    }
    return 1;
}
