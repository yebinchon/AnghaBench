
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int base_path; int pool; int txn; int txn_root; int txn_name; int revprop_table; int repos; scalar_t__ txn_owner; int fs; } ;
struct dir_baton {scalar_t__ base_rev; int path; int was_copied; int * pool; int * parent; void* edit_baton; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 struct dir_baton* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__) ;
 int svn_fs_txn_name (int *,int ,int ) ;
 int svn_fs_txn_root (int *,int ,int ) ;
 int svn_fs_youngest_rev (scalar_t__*,int ,int ) ;
 int * svn_prop_hash_to_array (int ,int *) ;
 int svn_repos_fs_begin_txn_for_commit2 (int *,int ,scalar_t__,int ,int ) ;
 int svn_repos_fs_change_txn_props (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct dir_baton *dirb;
  struct edit_baton *eb = edit_baton;
  svn_revnum_t youngest;




  SVN_ERR(svn_fs_youngest_rev(&youngest, eb->fs, eb->pool));

  if (base_revision > youngest)
    return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                             _("No such revision %ld (HEAD is %ld)"),
                             base_revision, youngest);



  if (eb->txn_owner)
    {
      SVN_ERR(svn_repos_fs_begin_txn_for_commit2(&(eb->txn),
                                                 eb->repos,
                                                 youngest,
                                                 eb->revprop_table,
                                                 eb->pool));
    }
  else

    {
      apr_array_header_t *props = svn_prop_hash_to_array(eb->revprop_table,
                                                         pool);
      SVN_ERR(svn_repos_fs_change_txn_props(eb->txn, props, pool));
    }
  SVN_ERR(svn_fs_txn_name(&(eb->txn_name), eb->txn, eb->pool));
  SVN_ERR(svn_fs_txn_root(&(eb->txn_root), eb->txn, eb->pool));




  dirb = apr_pcalloc(pool, sizeof(*dirb));
  dirb->edit_baton = edit_baton;
  dirb->parent = ((void*)0);
  dirb->pool = pool;
  dirb->was_copied = FALSE;
  dirb->path = apr_pstrdup(pool, eb->base_path);
  dirb->base_rev = base_revision;

  *root_baton = dirb;
  return SVN_NO_ERROR;
}
