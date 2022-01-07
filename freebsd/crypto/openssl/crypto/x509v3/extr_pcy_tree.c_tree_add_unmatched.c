
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int X509_POLICY_TREE ;
struct TYPE_15__ {TYPE_1__* data; } ;
typedef TYPE_3__ X509_POLICY_NODE ;
typedef int X509_POLICY_LEVEL ;
struct TYPE_16__ {int flags; int qualifier_set; } ;
typedef TYPE_4__ X509_POLICY_DATA ;
struct TYPE_17__ {TYPE_2__* anyPolicy; } ;
typedef TYPE_5__ X509_POLICY_CACHE ;
struct TYPE_14__ {int qualifier_set; } ;
struct TYPE_13__ {int * valid_policy; } ;
typedef int ASN1_OBJECT ;


 int POLICY_DATA_FLAG_SHARED_QUALIFIERS ;
 int * level_add_node (int *,TYPE_4__*,TYPE_3__*,int *) ;
 int node_critical (TYPE_3__*) ;
 int policy_data_free (TYPE_4__*) ;
 TYPE_4__* policy_data_new (int *,int const*,int ) ;

__attribute__((used)) static int tree_add_unmatched(X509_POLICY_LEVEL *curr,
                              const X509_POLICY_CACHE *cache,
                              const ASN1_OBJECT *id,
                              X509_POLICY_NODE *node, X509_POLICY_TREE *tree)
{
    X509_POLICY_DATA *data;

    if (id == ((void*)0))
        id = node->data->valid_policy;




    if ((data = policy_data_new(((void*)0), id, node_critical(node))) == ((void*)0))
        return 0;


    data->qualifier_set = cache->anyPolicy->qualifier_set;
    data->flags |= POLICY_DATA_FLAG_SHARED_QUALIFIERS;
    if (level_add_node(curr, data, node, tree) == ((void*)0)) {
        policy_data_free(data);
        return 0;
    }
    return 1;
}
