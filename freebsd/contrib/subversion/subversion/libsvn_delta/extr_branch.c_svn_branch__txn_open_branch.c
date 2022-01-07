
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int svn_branch__state_t ;
typedef int svn_branch__rev_bid_eid_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* open_branch ) (TYPE_2__*,int **,char const*,int,int *,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__*,int **,char const*,int,int *,int *,int *) ;

svn_error_t *
svn_branch__txn_open_branch(svn_branch__txn_t *txn,
                            svn_branch__state_t **new_branch_p,
                            const char *branch_id,
                            int root_eid,
                            svn_branch__rev_bid_eid_t *tree_ref,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  SVN_ERR(txn->vtable->open_branch(txn,
                                   new_branch_p,
                                   branch_id,
                                   root_eid, tree_ref, result_pool,
                                   scratch_pool));
  return SVN_NO_ERROR;
}
