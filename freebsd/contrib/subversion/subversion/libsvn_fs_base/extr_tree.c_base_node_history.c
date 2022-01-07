
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_5__ {int rev; int fs; scalar_t__ is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_history_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_REVISION_ROOT ;
 int * SVN_FS__NOT_FOUND (TYPE_1__*,char const*) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int * assemble_history (int ,int ,int ,int ,int *,int ,int *) ;
 int base_check_path (scalar_t__*,TYPE_1__*,char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_fs__canonicalize_abspath (char const*,int *) ;
 scalar_t__ svn_node_none ;

__attribute__((used)) static svn_error_t *
base_node_history(svn_fs_history_t **history_p,
                  svn_fs_root_t *root,
                  const char *path,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;


  if (root->is_txn_root)
    return svn_error_create(SVN_ERR_FS_NOT_REVISION_ROOT, ((void*)0), ((void*)0));


  SVN_ERR(base_check_path(&kind, root, path, scratch_pool));
  if (kind == svn_node_none)
    return SVN_FS__NOT_FOUND(root, path);


  *history_p = assemble_history(root->fs,
                                svn_fs__canonicalize_abspath(path,
                                                             result_pool),
                                root->rev, FALSE, ((void*)0),
                                SVN_INVALID_REVNUM, result_pool);
  return SVN_NO_ERROR;
}
