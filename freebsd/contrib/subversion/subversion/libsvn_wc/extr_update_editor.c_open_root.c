
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct edit_baton {char const* target_abspath; char* target_basename; int * target_revision; int db; void* root_opened; } ;
struct dir_baton {char const* local_abspath; int was_incomplete; int new_repos_relpath; void* shadowed; int * edit_conflict; int old_revision; int old_repos_relpath; int pool; int ambient_depth; int changed_author; int changed_date; int changed_rev; void* already_notified; void* skip_this; } ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 void* TRUE ;
 TYPE_1__* already_in_a_tree_conflict (scalar_t__*,scalar_t__*,int ,char const*,int *) ;
 int calculate_repos_relpath (int *,char const*,int ,struct edit_baton*,int *,int ,int *) ;
 int complete_conflict (int *,struct edit_baton*,char const*,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int do_notification (struct edit_baton*,char const*,int ,int ,int *) ;
 int make_dir_baton (struct dir_baton**,int *,struct edit_baton*,int *,scalar_t__,int *) ;
 int remember_skipped_tree (struct edit_baton*,char const*,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_node_dir ;
 int svn_node_unknown ;
 int svn_wc__conflict_skel_add_tree_conflict (int *,int ,char const*,int ,int ,char const*,int *,int *) ;
 int * svn_wc__conflict_skel_create (int *) ;
 int svn_wc__db_base_get_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int ,int *) ;
 int svn_wc__db_base_moved_to (int *,int *,char const**,int *,int ,char const*,int *,int *) ;
 int svn_wc__db_op_mark_conflict (int ,char const*,int *,int *,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int ,char const*,int ,int *) ;
 scalar_t__ svn_wc__db_status_incomplete ;
 int svn_wc__db_temp_op_start_directory_update (int ,char const*,int ,int ,int *) ;
 int svn_wc_conflict_action_edit ;
 int svn_wc_conflict_reason_moved_away ;
 int svn_wc_notify_skip_conflicted ;
 int svn_wc_notify_tree_conflict ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **dir_baton)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *db;
  svn_boolean_t already_conflicted, conflict_ignored;
  svn_error_t *err;
  svn_wc__db_status_t status;
  svn_wc__db_status_t base_status;
  svn_node_kind_t kind;
  svn_boolean_t have_work;



  eb->root_opened = TRUE;

  SVN_ERR(make_dir_baton(&db, ((void*)0), eb, ((void*)0), FALSE, pool));
  *dir_baton = db;

  err = already_in_a_tree_conflict(&already_conflicted, &conflict_ignored,
                                   eb->db, db->local_abspath, pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
      already_conflicted = conflict_ignored = FALSE;
    }
  else if (already_conflicted)
    {


      SVN_ERR(remember_skipped_tree(eb, db->local_abspath, pool));
      SVN_ERR(remember_skipped_tree(eb, eb->target_abspath, pool));

      db->skip_this = TRUE;
      db->already_notified = TRUE;



      do_notification(eb, eb->target_abspath, svn_node_unknown,
                      svn_wc_notify_skip_conflicted, pool);

      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_wc__db_read_info(&status, &kind, &db->old_revision,
                               &db->old_repos_relpath, ((void*)0), ((void*)0),
                               &db->changed_rev, &db->changed_date,
                               &db->changed_author, &db->ambient_depth,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), &have_work,
                               eb->db, db->local_abspath,
                               db->pool, pool));

  if (have_work)
    {
      SVN_ERR(svn_wc__db_base_get_info(&base_status, ((void*)0),
                                       &db->old_revision,
                                       &db->old_repos_relpath, ((void*)0), ((void*)0),
                                       &db->changed_rev, &db->changed_date,
                                       &db->changed_author,
                                       &db->ambient_depth,
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       eb->db, db->local_abspath,
                                       db->pool, pool));
    }
  else
    base_status = status;

  SVN_ERR(calculate_repos_relpath(&db->new_repos_relpath, db->local_abspath,
                                  db->old_repos_relpath, eb, ((void*)0),
                                  db->pool, pool));

  if (conflict_ignored)
    db->shadowed = TRUE;
  else if (have_work)
    {
      const char *move_src_root_abspath;

      SVN_ERR(svn_wc__db_base_moved_to(((void*)0), ((void*)0), &move_src_root_abspath,
                                       ((void*)0), eb->db, db->local_abspath,
                                       pool, pool));

      if (move_src_root_abspath)
        {



          svn_skel_t *tree_conflict = svn_wc__conflict_skel_create(pool);

          SVN_ERR(svn_wc__conflict_skel_add_tree_conflict(
                    tree_conflict, eb->db, move_src_root_abspath,
                    svn_wc_conflict_reason_moved_away,
                    svn_wc_conflict_action_edit,
                    move_src_root_abspath, pool, pool));

          if (strcmp(db->local_abspath, move_src_root_abspath))
            {



              SVN_ERR(complete_conflict(tree_conflict, eb,
                                        move_src_root_abspath,
                                        db->old_repos_relpath,
                                        db->old_revision,
                                        db->new_repos_relpath,
                                        svn_node_dir, svn_node_dir,
                                        ((void*)0), pool, pool));
              SVN_ERR(svn_wc__db_op_mark_conflict(eb->db,
                                                  move_src_root_abspath,
                                                  tree_conflict,
                                                  ((void*)0), pool));
              do_notification(eb, move_src_root_abspath, svn_node_dir,
                              svn_wc_notify_tree_conflict, pool);
            }
          else
            db->edit_conflict = tree_conflict;
        }

      db->shadowed = TRUE;

    }

  if (*eb->target_basename == '\0')
    {


      db->was_incomplete = (base_status == svn_wc__db_status_incomplete);
      SVN_ERR(svn_wc__db_temp_op_start_directory_update(eb->db,
                                                        db->local_abspath,
                                                        db->new_repos_relpath,
                                                        *eb->target_revision,
                                                        pool));
    }

  return SVN_NO_ERROR;
}
