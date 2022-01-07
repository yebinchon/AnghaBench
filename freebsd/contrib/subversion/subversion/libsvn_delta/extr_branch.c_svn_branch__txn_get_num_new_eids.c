
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* get_num_new_eids ) (TYPE_2__ const*,int*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__ const*,int*,int *) ;

svn_error_t *
svn_branch__txn_get_num_new_eids(const svn_branch__txn_t *txn,
                                 int *num_new_eids_p,
                                 apr_pool_t *scratch_pool)
{
  SVN_ERR(txn->vtable->get_num_new_eids(txn,
                                        num_new_eids_p,
                                        scratch_pool));
  return SVN_NO_ERROR;
}
