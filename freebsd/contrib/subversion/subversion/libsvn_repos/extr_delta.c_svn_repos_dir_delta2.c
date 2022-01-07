
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_repos_authz_func_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef scalar_t__ svn_fs_node_relation_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_3__ {int * (* close_edit ) (void*,int *) ;int (* close_directory ) (void*,int *) ;int (* open_root ) (void*,int ,int *,void**) ;int (* set_target_revision ) (void*,int ,int *) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef void* svn_boolean_t ;
struct context {void* ignore_ancestry; void* entry_props; void* text_deltas; void* authz_read_baton; int authz_read_func; int * target_root; int * source_root; TYPE_1__ const* editor; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_PATH_SYNTAX ;
 int SVN_ERR_REPOS_BAD_ARGS ;
 char* _ (char*) ;
 int add_file_or_dir (struct context*,void*,int ,char const*,char const*,scalar_t__,int *) ;
 int authz_root_check (int *,char const*,int ,void*,int *) ;
 int delete (struct context*,void*,char const*,int *) ;
 int delta_dirs (struct context*,void*,int ,char const*,char const*,char*,int *) ;
 int get_path_revision (int *,char const*,int *) ;
 int replace_file_or_dir (struct context*,void*,int ,char const*,char const*,char const*,scalar_t__,int *) ;
 int stub1 (void*,int ,int *) ;
 int stub2 (void*,int ,int *) ;
 int stub3 (void*,int ,int *,void**) ;
 int stub4 (void*,int ,int *,void**) ;
 int stub5 (void*,int ,int *,void**) ;
 int stub6 (void*,int ,int *,void**) ;
 int stub7 (void*,int ,int *,void**) ;
 int stub8 (void*,int *) ;
 int * stub9 (void*,int *) ;
 int svn_depth_exclude ;
 int * svn_error_create (int ,int *,char*) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 scalar_t__ svn_fs_is_revision_root (int *) ;
 scalar_t__ svn_fs_is_txn_root (int *) ;
 int svn_fs_node_relation (scalar_t__*,int *,char const*,int *,char const*,int *) ;
 scalar_t__ svn_fs_node_unchanged ;
 scalar_t__ svn_fs_node_unrelated ;
 int svn_fs_refresh_revision_props (int ,int *) ;
 int svn_fs_revision_root_revision (int *) ;
 int svn_fs_root_fs (int *) ;
 int svn_fs_txn_root_base_revision (int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;

svn_error_t *
svn_repos_dir_delta2(svn_fs_root_t *src_root,
                     const char *src_parent_dir,
                     const char *src_entry,
                     svn_fs_root_t *tgt_root,
                     const char *tgt_fullpath,
                     const svn_delta_editor_t *editor,
                     void *edit_baton,
                     svn_repos_authz_func_t authz_read_func,
                     void *authz_read_baton,
                     svn_boolean_t text_deltas,
                     svn_depth_t depth,
                     svn_boolean_t entry_props,
                     svn_boolean_t ignore_ancestry,
                     apr_pool_t *pool)
{
  void *root_baton = ((void*)0);
  struct context c;
  const char *src_fullpath;
  svn_node_kind_t src_kind, tgt_kind;
  svn_revnum_t rootrev;
  svn_fs_node_relation_t relation;
  const char *authz_root_path;


  if (src_parent_dir)
    src_parent_dir = svn_relpath_canonicalize(src_parent_dir, pool);
  else
    return svn_error_create(SVN_ERR_FS_NOT_DIRECTORY, 0,
                            "Invalid source parent directory '(null)'");


  if (tgt_fullpath)
    tgt_fullpath = svn_relpath_canonicalize(tgt_fullpath, pool);
  else
    return svn_error_create(SVN_ERR_FS_PATH_SYNTAX, 0,
                            _("Invalid target path"));

  if (depth == svn_depth_exclude)
    return svn_error_create(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                            _("Delta depth 'exclude' not supported"));



  if (*src_entry)
    authz_root_path = svn_relpath_dirname(tgt_fullpath, pool);
  else
    authz_root_path = tgt_fullpath;


  src_fullpath = svn_relpath_join(src_parent_dir, src_entry, pool);


  SVN_ERR(svn_fs_check_path(&tgt_kind, tgt_root, tgt_fullpath, pool));
  SVN_ERR(svn_fs_check_path(&src_kind, src_root, src_fullpath, pool));


  if ((tgt_kind == svn_node_none) && (src_kind == svn_node_none))
    goto cleanup;



  if ((! *src_entry) && ((src_kind != svn_node_dir)
                         || tgt_kind != svn_node_dir))
    return svn_error_create
      (SVN_ERR_FS_PATH_SYNTAX, 0,
       _("Invalid editor anchoring; at least one of the "
         "input paths is not a directory and there was no source entry"));





  SVN_ERR(svn_fs_refresh_revision_props(svn_fs_root_fs(tgt_root), pool));
  SVN_ERR(svn_fs_refresh_revision_props(svn_fs_root_fs(src_root), pool));


  if (svn_fs_is_revision_root(tgt_root))
    {
      SVN_ERR(editor->set_target_revision
              (edit_baton, svn_fs_revision_root_revision(tgt_root), pool));
    }
  else if (svn_fs_is_txn_root(tgt_root))
    {
      SVN_ERR(editor->set_target_revision
              (edit_baton, svn_fs_txn_root_base_revision(tgt_root), pool));
    }




  c.editor = editor;
  c.source_root = src_root;
  c.target_root = tgt_root;
  c.authz_read_func = authz_read_func;
  c.authz_read_baton = authz_read_baton;
  c.text_deltas = text_deltas;
  c.entry_props = entry_props;
  c.ignore_ancestry = ignore_ancestry;


  rootrev = get_path_revision(src_root, src_parent_dir, pool);



  if (tgt_kind == svn_node_none)
    {


      SVN_ERR(authz_root_check(tgt_root, authz_root_path,
                               authz_read_func, authz_read_baton, pool));
      SVN_ERR(editor->open_root(edit_baton, rootrev, pool, &root_baton));
      SVN_ERR(delete(&c, root_baton, src_entry, pool));
      goto cleanup;
    }
  if (src_kind == svn_node_none)
    {


      SVN_ERR(authz_root_check(tgt_root, authz_root_path,
                               authz_read_func, authz_read_baton, pool));
      SVN_ERR(editor->open_root(edit_baton, rootrev, pool, &root_baton));
      SVN_ERR(add_file_or_dir(&c, root_baton, depth, tgt_fullpath,
                              src_entry, tgt_kind, pool));
      goto cleanup;
    }


  SVN_ERR(svn_fs_node_relation(&relation, tgt_root, tgt_fullpath,
                               src_root, src_fullpath, pool));

  if (relation == svn_fs_node_unchanged)
    {

      goto cleanup;
    }
  else if (*src_entry)
    {



      if ((src_kind != tgt_kind)
          || ((relation == svn_fs_node_unrelated) && (! ignore_ancestry)))
        {
          SVN_ERR(authz_root_check(tgt_root, authz_root_path,
                                   authz_read_func, authz_read_baton, pool));
          SVN_ERR(editor->open_root(edit_baton, rootrev, pool, &root_baton));
          SVN_ERR(delete(&c, root_baton, src_entry, pool));
          SVN_ERR(add_file_or_dir(&c, root_baton, depth, tgt_fullpath,
                                  src_entry, tgt_kind, pool));
        }

      else
        {
          SVN_ERR(authz_root_check(tgt_root, authz_root_path,
                                   authz_read_func, authz_read_baton, pool));
          SVN_ERR(editor->open_root(edit_baton, rootrev, pool, &root_baton));
          SVN_ERR(replace_file_or_dir(&c, root_baton, depth, src_fullpath,
                                      tgt_fullpath, src_entry,
                                      tgt_kind, pool));
        }
    }
  else
    {

      SVN_ERR(authz_root_check(tgt_root, authz_root_path,
                               authz_read_func, authz_read_baton, pool));
      SVN_ERR(editor->open_root(edit_baton, rootrev, pool, &root_baton));
      SVN_ERR(delta_dirs(&c, root_baton, depth, src_fullpath,
                         tgt_fullpath, "", pool));
    }

 cleanup:


  if (root_baton)
    SVN_ERR(editor->close_directory(root_baton, pool));


  return editor->close_edit(edit_baton, pool);
}
