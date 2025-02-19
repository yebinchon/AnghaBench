
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct edit_baton {int txn; int fs; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_fs_node_proplist (int **,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_txn_base_revision (int ) ;

__attribute__((used)) static svn_error_t *
fetch_props_func(apr_hash_t **props,
                 void *baton,
                 const char *path,
                 svn_revnum_t base_revision,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  svn_fs_root_t *fs_root;
  svn_error_t *err;

  SVN_ERR(svn_fs_revision_root(&fs_root, eb->fs,
                               svn_fs_txn_base_revision(eb->txn),
                               scratch_pool));
  err = svn_fs_node_proplist(props, fs_root, path, result_pool);
  if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
    {
      svn_error_clear(err);
      *props = apr_hash_make(result_pool);
      return SVN_NO_ERROR;
    }
  else if (err)
    return svn_error_trace(err);

  return SVN_NO_ERROR;
}
