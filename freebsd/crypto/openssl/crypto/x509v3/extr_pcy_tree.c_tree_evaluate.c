
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int nlevel; TYPE_2__* levels; } ;
typedef TYPE_1__ X509_POLICY_TREE ;
struct TYPE_12__ {int flags; int cert; } ;
typedef TYPE_2__ X509_POLICY_LEVEL ;
typedef int X509_POLICY_CACHE ;


 int X509_PCY_TREE_INTERNAL ;
 int X509_PCY_TREE_VALID ;
 int X509_V_FLAG_INHIBIT_ANY ;
 int * policy_cache_set (int ) ;
 int tree_link_any (TYPE_2__*,int const*,TYPE_1__*) ;
 int tree_link_nodes (TYPE_2__*,int const*) ;
 int tree_print (char*,TYPE_1__*,TYPE_2__*) ;
 int tree_prune (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int tree_evaluate(X509_POLICY_TREE *tree)
{
    int ret, i;
    X509_POLICY_LEVEL *curr = tree->levels + 1;
    const X509_POLICY_CACHE *cache;

    for (i = 1; i < tree->nlevel; i++, curr++) {
        cache = policy_cache_set(curr->cert);
        if (!tree_link_nodes(curr, cache))
            return X509_PCY_TREE_INTERNAL;

        if (!(curr->flags & X509_V_FLAG_INHIBIT_ANY)
            && !tree_link_any(curr, cache, tree))
            return X509_PCY_TREE_INTERNAL;



        ret = tree_prune(tree, curr);
        if (ret != X509_PCY_TREE_VALID)
            return ret;
    }
    return X509_PCY_TREE_VALID;
}
