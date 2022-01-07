
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
struct file_baton {int local_abspath; void* already_notified; int * edit_conflict; int pool; int name; int new_repos_relpath; int old_revision; int old_repos_relpath; int edit_baton; void* shadowed; void* obstruction_found; void* add_existed; void* skip_this; } ;
struct edit_baton {char* target_basename; int db; int target_abspath; scalar_t__ allow_unver_obstructions; int adds_as_modification; int clean_checkout; } ;
struct dir_baton {scalar_t__ deletion_conflicts; int pool; int not_present_nodes; scalar_t__ parent_baton; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int IS_NODE_PRESENT (scalar_t__) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_OBSTRUCTED_UPDATE ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 int apr_pstrdup (int ,int ) ;
 int calculate_repos_relpath (int *,int ,int *,struct edit_baton*,struct dir_baton*,int ,int *) ;
 int check_tree_conflict (int **,struct edit_baton*,int ,scalar_t__,int,scalar_t__,int ,int ,int *) ;
 int complete_conflict (int *,int ,int ,int ,int ,int ,scalar_t__,scalar_t__,int *,int ,int *) ;
 int do_notification (struct edit_baton*,int ,scalar_t__,int ,int *) ;
 int make_file_baton (struct file_baton**,struct dir_baton*,char const*,void*,int *) ;
 int mark_file_edited (struct file_baton*,int *) ;
 int node_already_conflicted (int*,int*,int ,int ,int *) ;
 int remember_skipped_tree (struct edit_baton*,int ,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int * svn_hash_gets (scalar_t__,int ) ;
 int svn_hash_sets (int ,int ,int ) ;
 int svn_io_check_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_node_kind_to_word (scalar_t__) ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_symlink ;
 scalar_t__ svn_node_unknown ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc__conflict_read_tree_conflict (int *,int *,char const**,int ,int ,int *,int ,int *) ;
 int svn_wc__conflict_skel_add_tree_conflict (int *,int ,int ,int ,int ,char const*,int ,int *) ;
 int * svn_wc__conflict_skel_create (int ) ;
 int svn_wc__db_is_wcroot (int*,int ,int ,int *) ;
 int svn_wc__db_op_mark_conflict (int ,int ,int *,int *,int *) ;
 TYPE_1__* svn_wc__db_read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int*,int *,int *,int *,int *,int *,int *,int ,int ,int *,int *) ;
 int svn_wc__db_scan_addition (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int ,int ,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 int svn_wc_conflict_action_add ;
 int svn_wc_conflict_action_replace ;
 int svn_wc_conflict_reason_unversioned ;
 scalar_t__ svn_wc_is_adm_dir (int ,int *) ;
 int svn_wc_notify_skip_conflicted ;
 int svn_wc_notify_tree_conflict ;
 int svn_wc_notify_update_skip_obstruction ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_rev,
         apr_pool_t *pool,
         void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct file_baton *fb;
  svn_node_kind_t kind;
  svn_node_kind_t wc_kind;
  svn_wc__db_status_t status;
  apr_pool_t *scratch_pool;
  svn_boolean_t conflicted;
  svn_boolean_t conflict_ignored = FALSE;
  svn_boolean_t versioned_locally_and_present;
  svn_skel_t *tree_conflict = ((void*)0);
  svn_error_t *err = SVN_NO_ERROR;

  SVN_ERR_ASSERT(! (copyfrom_path || SVN_IS_VALID_REVNUM(copyfrom_rev)));

  SVN_ERR(make_file_baton(&fb, pb, path, TRUE, pool));
  *file_baton = fb;

  if (fb->skip_this)
    return SVN_NO_ERROR;

  SVN_ERR(calculate_repos_relpath(&fb->new_repos_relpath, fb->local_abspath,
                                  ((void*)0), eb, pb, fb->pool, pool));
  SVN_ERR(mark_file_edited(fb, pool));



  scratch_pool = svn_pool_create(pool);



  if (svn_wc_is_adm_dir(fb->name, pool))
    return svn_error_createf(
       SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
       _("Failed to add file '%s': object of the same name as the "
         "administrative directory"),
       svn_dirent_local_style(fb->local_abspath, pool));

  if (!eb->clean_checkout)
    {
      SVN_ERR(svn_io_check_path(fb->local_abspath, &kind, scratch_pool));

      err = svn_wc__db_read_info(&status, &wc_kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                &conflicted, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                eb->db, fb->local_abspath,
                                scratch_pool, scratch_pool);
    }
  else
    {
      kind = svn_node_none;
      status = svn_wc__db_status_not_present;
      wc_kind = svn_node_unknown;
      conflicted = FALSE;
    }

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
      wc_kind = svn_node_unknown;
      conflicted = FALSE;

      versioned_locally_and_present = FALSE;
    }
  else if (status == svn_wc__db_status_normal && wc_kind == svn_node_unknown)
    {
      SVN_ERR_ASSERT(conflicted);
      versioned_locally_and_present = FALSE;
    }
  else if (status == svn_wc__db_status_normal
           || status == svn_wc__db_status_incomplete)
    {
      svn_boolean_t root;

      SVN_ERR(svn_wc__db_is_wcroot(&root, eb->db, fb->local_abspath,
                                   scratch_pool));

      if (root)
        {
          svn_hash_sets(pb->not_present_nodes,
                        apr_pstrdup(pb->pool, fb->name),
                        svn_node_kind_to_word(svn_node_dir));
        }
      else if (wc_kind == svn_node_dir)
        {



        }
      else
        {
          SVN_ERR_ASSERT(wc_kind == svn_node_file
                         || wc_kind == svn_node_symlink);
        }

      SVN_ERR(remember_skipped_tree(eb, fb->local_abspath, pool));
      fb->skip_this = TRUE;
      fb->already_notified = TRUE;

      do_notification(eb, fb->local_abspath, wc_kind,
                      svn_wc_notify_update_skip_obstruction, scratch_pool);

      svn_pool_destroy(scratch_pool);

      return SVN_NO_ERROR;
    }
  else
    versioned_locally_and_present = IS_NODE_PRESENT(status);



  if (fb->shadowed)
    conflicted = FALSE;
  else if (conflicted)
    {
      if (pb->deletion_conflicts)
        tree_conflict = svn_hash_gets(pb->deletion_conflicts, fb->name);

      if (tree_conflict)
        {
          svn_wc_conflict_reason_t reason;
          const char *move_src_op_root_abspath;



          SVN_ERR(svn_wc__conflict_read_tree_conflict(&reason, ((void*)0),
                                                      &move_src_op_root_abspath,
                                                      eb->db,
                                                      fb->local_abspath,
                                                      tree_conflict,
                                                      fb->pool, scratch_pool));

          tree_conflict = svn_wc__conflict_skel_create(fb->pool);

          SVN_ERR(svn_wc__conflict_skel_add_tree_conflict(
                                        tree_conflict,
                                        eb->db, fb->local_abspath,
                                        reason, svn_wc_conflict_action_replace,
                                        move_src_op_root_abspath,
                                        fb->pool, scratch_pool));



          fb->edit_conflict = tree_conflict;
          tree_conflict = ((void*)0);
          fb->shadowed = TRUE;
          conflicted = FALSE;
        }
      else
        SVN_ERR(node_already_conflicted(&conflicted, &conflict_ignored,
                                        eb->db, fb->local_abspath, pool));
    }


  if (conflicted)
    {
      SVN_ERR(remember_skipped_tree(eb, fb->local_abspath, pool));

      fb->skip_this = TRUE;
      fb->already_notified = TRUE;
      svn_hash_sets(pb->not_present_nodes, apr_pstrdup(pb->pool, fb->name),
                    svn_node_kind_to_word(svn_node_file));

      do_notification(eb, fb->local_abspath, svn_node_file,
                      svn_wc_notify_skip_conflicted, scratch_pool);

      svn_pool_destroy(scratch_pool);

      return SVN_NO_ERROR;
    }
  else if (conflict_ignored)
    {
      fb->shadowed = TRUE;
    }

  if (fb->shadowed)
    {

    }
  else if (versioned_locally_and_present)
    {
      svn_boolean_t local_is_file;


      if (status == svn_wc__db_status_added)
        SVN_ERR(svn_wc__db_scan_addition(&status, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0),
                                         eb->db, fb->local_abspath,
                                         scratch_pool, scratch_pool));


      local_is_file = (wc_kind == svn_node_file
                       || wc_kind == svn_node_symlink);
      if (!eb->adds_as_modification
          || !local_is_file
          || status != svn_wc__db_status_added)
        {
          SVN_ERR(check_tree_conflict(&tree_conflict, eb,
                                      fb->local_abspath,
                                      status, FALSE, svn_node_none,
                                      svn_wc_conflict_action_add,
                                      fb->pool, scratch_pool));
        }

      if (tree_conflict == ((void*)0))
        fb->add_existed = TRUE;
      else
        fb->shadowed = TRUE;

    }
  else if (kind != svn_node_none)
    {

      fb->obstruction_found = TRUE;



      if (! (kind == svn_node_file && eb->allow_unver_obstructions))
        {

          fb->shadowed = TRUE;


          tree_conflict = svn_wc__conflict_skel_create(fb->pool);

          SVN_ERR(svn_wc__conflict_skel_add_tree_conflict(
                                        tree_conflict,
                                        eb->db, fb->local_abspath,
                                        svn_wc_conflict_reason_unversioned,
                                        svn_wc_conflict_action_add,
                                        ((void*)0),
                                        fb->pool, scratch_pool));
        }
    }




  if (pb->parent_baton
      || *eb->target_basename == '\0'
      || (strcmp(fb->local_abspath, eb->target_abspath) != 0))
    {
      svn_hash_sets(pb->not_present_nodes, apr_pstrdup(pb->pool, fb->name),
                    svn_node_kind_to_word(svn_node_file));
    }

  if (tree_conflict != ((void*)0))
    {
      SVN_ERR(complete_conflict(tree_conflict,
                                fb->edit_baton,
                                fb->local_abspath,
                                fb->old_repos_relpath,
                                fb->old_revision,
                                fb->new_repos_relpath,
                                wc_kind, svn_node_file,
                                pb->deletion_conflicts
                                  ? svn_hash_gets(pb->deletion_conflicts,
                                                  fb->name)
                                  : ((void*)0),
                                fb->pool, scratch_pool));

      SVN_ERR(svn_wc__db_op_mark_conflict(eb->db,
                                          fb->local_abspath,
                                          tree_conflict, ((void*)0),
                                          scratch_pool));

      fb->edit_conflict = tree_conflict;

      fb->already_notified = TRUE;
      do_notification(eb, fb->local_abspath, svn_node_file,
                      svn_wc_notify_tree_conflict, scratch_pool);
    }

  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
