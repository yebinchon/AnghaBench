
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nlevel; struct TYPE_5__* levels; int extra_data; int anyPolicy; int nodes; int cert; int user_policies; int auth_policies; } ;
typedef TYPE_1__ X509_POLICY_TREE ;
typedef TYPE_1__ X509_POLICY_LEVEL ;


 int OPENSSL_free (TYPE_1__*) ;
 int X509_free (int ) ;
 int exnode_free (int ) ;
 int policy_data_free ;
 int policy_node_free (int ) ;
 int sk_X509_POLICY_DATA_pop_free (int ,int ) ;
 int sk_X509_POLICY_NODE_free (int ) ;
 int sk_X509_POLICY_NODE_pop_free (int ,int (*) (int )) ;

void X509_policy_tree_free(X509_POLICY_TREE *tree)
{
    X509_POLICY_LEVEL *curr;
    int i;

    if (!tree)
        return;

    sk_X509_POLICY_NODE_free(tree->auth_policies);
    sk_X509_POLICY_NODE_pop_free(tree->user_policies, exnode_free);

    for (i = 0, curr = tree->levels; i < tree->nlevel; i++, curr++) {
        X509_free(curr->cert);
        sk_X509_POLICY_NODE_pop_free(curr->nodes, policy_node_free);
        policy_node_free(curr->anyPolicy);
    }

    sk_X509_POLICY_DATA_pop_free(tree->extra_data, policy_data_free);
    OPENSSL_free(tree->levels);
    OPENSSL_free(tree);

}
