
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_4__ {int wrapped_txn; } ;


 int * svn_branch__txn_get_branches (int ,int *) ;

__attribute__((used)) static apr_array_header_t *
nested_branch_txn_get_branches(const svn_branch__txn_t *txn,
                               apr_pool_t *result_pool)
{

  apr_array_header_t *branches
    = svn_branch__txn_get_branches(txn->priv->wrapped_txn,
                                   result_pool);

  return branches;
}
