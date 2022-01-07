
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_txn_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* root ) (int **,TYPE_2__*,int *) ;} ;


 int stub1 (int **,TYPE_2__*,int *) ;
 int * svn_error_trace (int ) ;
 int * svn_pool_create (int *) ;

svn_error_t *
svn_fs_txn_root(svn_fs_root_t **root_p, svn_fs_txn_t *txn, apr_pool_t *pool)
{


  apr_pool_t *subpool = svn_pool_create(pool);
  return svn_error_trace(txn->vtable->root(root_p, txn, subpool));
}
