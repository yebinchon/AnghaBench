
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_7__ {int fs; TYPE_1__* fs_path; } ;
typedef TYPE_3__ svn_ra_local__session_baton_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_5__ {int data; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 scalar_t__ svn_node_none ;
 int svn_repos_fs_get_inherited_props (int **,int *,char const*,int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__get_inherited_props(svn_ra_session_t *session,
                                  apr_array_header_t **iprops,
                                  const char *path,
                                  svn_revnum_t revision,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_fs_root_t *root;
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *abs_path = svn_fspath__join(sess->fs_path->data, path,
                                          scratch_pool);
  svn_node_kind_t node_kind;


  SVN_ERR(svn_fs_revision_root(&root, sess->fs, revision, scratch_pool));

  SVN_ERR(svn_fs_check_path(&node_kind, root, abs_path, scratch_pool));
  if (node_kind == svn_node_none)
    {
      return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                               _("'%s' path not found"), abs_path);
    }

  return svn_error_trace(
                svn_repos_fs_get_inherited_props(iprops, root, abs_path,
                                                 ((void*)0) ,
                                                 ((void*)0), ((void*)0) ,
                                                 result_pool, scratch_pool));
}
