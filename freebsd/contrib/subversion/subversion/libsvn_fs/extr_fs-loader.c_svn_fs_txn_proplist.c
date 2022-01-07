
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int (* get_proplist ) (int **,TYPE_2__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_FS__PROP_TXN_CHECK_LOCKS ;
 int SVN_FS__PROP_TXN_CHECK_OOD ;
 int SVN_FS__PROP_TXN_CLIENT_DATE ;
 int * SVN_NO_ERROR ;
 int stub1 (int **,TYPE_2__*,int *) ;
 int svn_hash_sets (int *,int ,int *) ;

svn_error_t *
svn_fs_txn_proplist(apr_hash_t **table_p, svn_fs_txn_t *txn, apr_pool_t *pool)
{
  SVN_ERR(txn->vtable->get_proplist(table_p, txn, pool));


  svn_hash_sets(*table_p, SVN_FS__PROP_TXN_CHECK_LOCKS, ((void*)0));
  svn_hash_sets(*table_p, SVN_FS__PROP_TXN_CHECK_OOD, ((void*)0));
  svn_hash_sets(*table_p, SVN_FS__PROP_TXN_CLIENT_DATE, ((void*)0));

  return SVN_NO_ERROR;
}
