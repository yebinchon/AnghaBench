
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_editor_t ;
struct TYPE_5__ {int (* set_target_revision ) (void*,scalar_t__,int *) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef int svn_delta__unlock_func_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_delta__extra_baton {int baton; int (* start_edit ) (int ,scalar_t__) ;} ;
struct path_driver_cb_baton {char const* base_path; int * pool; int copies; int * compare_root; scalar_t__ low_water_mark; void* authz_read_baton; int authz_read_func; int * changed_paths; int * root; void* edit_baton; TYPE_1__ const* editor; } ;
struct copy_info {int dummy; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_array_make (int *,int,int) ;
 int fetch_kind_func ;
 int fetch_props_func ;
 int get_relevant_changes (int **,int **,int *,char const*,int ,void*,int *,int *) ;
 int path_driver_cb_func ;
 int stub1 (void*,scalar_t__,int *) ;
 int stub2 (void*,scalar_t__,int *) ;
 int stub3 (void*,scalar_t__,int *) ;
 int stub4 (void*,scalar_t__,int *) ;
 int stub5 (int ,scalar_t__) ;
 int svn_delta__editor_from_delta (int **,struct svn_delta__extra_baton**,int *,void**,TYPE_1__ const*,void*,scalar_t__*,char const*,char*,int *,int *,int ,int *,int ,int *,int *,int *) ;
 int * svn_delta_path_driver2 (TYPE_1__ const*,void*,int *,int ,int ,struct path_driver_cb_baton*,int *) ;
 scalar_t__ svn_fs_is_revision_root (int *) ;
 int svn_fs_revision_root (int **,int ,scalar_t__,int *) ;
 scalar_t__ svn_fs_revision_root_revision (int *) ;
 int svn_fs_root_fs (int *) ;
 scalar_t__ svn_fs_txn_root_base_revision (int *) ;
 int svn_repos__replay_ev2 (int *,char const*,scalar_t__,int *,int ,void*,int *) ;

svn_error_t *
svn_repos_replay2(svn_fs_root_t *root,
                  const char *base_path,
                  svn_revnum_t low_water_mark,
                  svn_boolean_t send_deltas,
                  const svn_delta_editor_t *editor,
                  void *edit_baton,
                  svn_repos_authz_func_t authz_read_func,
                  void *authz_read_baton,
                  apr_pool_t *pool)
{

  apr_hash_t *changed_paths;
  apr_array_header_t *paths;
  struct path_driver_cb_baton cb_baton;



  if (svn_fs_is_revision_root(root) && svn_fs_revision_root_revision(root) == 0)
    {
      SVN_ERR(editor->set_target_revision(edit_baton, 0, pool));
      return SVN_NO_ERROR;
    }

  if (! base_path)
    base_path = "";
  else if (base_path[0] == '/')
    ++base_path;


  SVN_ERR(get_relevant_changes(&changed_paths, &paths, root, base_path,
                               authz_read_func, authz_read_baton,
                               pool, pool));



  if (! SVN_IS_VALID_REVNUM(low_water_mark))
    low_water_mark = 0;


  cb_baton.editor = editor;
  cb_baton.edit_baton = edit_baton;
  cb_baton.root = root;
  cb_baton.changed_paths = changed_paths;
  cb_baton.authz_read_func = authz_read_func;
  cb_baton.authz_read_baton = authz_read_baton;
  cb_baton.base_path = base_path;
  cb_baton.low_water_mark = low_water_mark;
  cb_baton.compare_root = ((void*)0);

  if (send_deltas)
    {
      SVN_ERR(svn_fs_revision_root(&cb_baton.compare_root,
                                   svn_fs_root_fs(root),
                                   svn_fs_is_revision_root(root)
                                     ? svn_fs_revision_root_revision(root) - 1
                                     : svn_fs_txn_root_base_revision(root),
                                   pool));
    }

  cb_baton.copies = apr_array_make(pool, 4, sizeof(struct copy_info *));
  cb_baton.pool = pool;



  if (svn_fs_is_revision_root(root))
    {
      svn_revnum_t revision = svn_fs_revision_root_revision(root);
      SVN_ERR(editor->set_target_revision(edit_baton, revision, pool));
    }


  return svn_delta_path_driver2(editor, edit_baton,
                                paths, TRUE,
                                path_driver_cb_func, &cb_baton, pool);
}
