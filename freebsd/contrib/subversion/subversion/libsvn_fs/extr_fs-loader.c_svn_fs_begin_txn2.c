
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_txn_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* begin_txn ) (int **,TYPE_2__*,int ,int ,int *) ;} ;


 int stub1 (int **,TYPE_2__*,int ,int ,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_begin_txn2(svn_fs_txn_t **txn_p, svn_fs_t *fs, svn_revnum_t rev,
                  apr_uint32_t flags, apr_pool_t *pool)
{
  return svn_error_trace(fs->vtable->begin_txn(txn_p, fs, rev, flags, pool));
}
