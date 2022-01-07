
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_12__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_txn_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {TYPE_3__* (* commit ) (char const**,int *,TYPE_2__*,int *) ;} ;


 int SVN_ERR (TYPE_3__*) ;
 int SVN_ERR_ASSERT_E (int,TYPE_3__*) ;
 scalar_t__ SVN_ERR_FS_CONFLICT ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_3__* SVN_NO_ERROR ;
 TYPE_3__* stub1 (char const**,int *,TYPE_2__*,int *) ;

svn_error_t *
svn_fs_commit_txn(const char **conflict_p, svn_revnum_t *new_rev,
                   svn_fs_txn_t *txn, apr_pool_t *pool)
{
  svn_error_t *err;

  *new_rev = SVN_INVALID_REVNUM;
  if (conflict_p)
    *conflict_p = ((void*)0);

  err = txn->vtable->commit(conflict_p, new_rev, txn, pool);
  SVN_ERR(err);

  return SVN_NO_ERROR;
}
