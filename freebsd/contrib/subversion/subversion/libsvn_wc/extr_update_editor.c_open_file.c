
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct file_baton {void* shadowed; void* edit_obstructed; int local_abspath; int * edit_conflict; int pool; void* already_notified; void* skip_this; int old_repos_relpath; int new_repos_relpath; int original_checksum; int changed_author; int changed_date; int changed_rev; int old_revision; int local_prop_mods; } ;
struct edit_baton {int db; } ;
struct dir_baton {struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int calculate_repos_relpath (int *,int ,int ,struct edit_baton*,struct dir_baton*,int ,int *) ;
 int check_tree_conflict (int **,struct edit_baton*,int ,int ,void*,int ,int ,int ,int *) ;
 int do_notification (struct edit_baton*,int ,int ,int ,int *) ;
 int make_file_baton (struct file_baton**,struct dir_baton*,char const*,scalar_t__,int *) ;
 int node_already_conflicted (scalar_t__*,scalar_t__*,int ,int ,int *) ;
 int remember_skipped_tree (struct edit_baton*,int ,int *) ;
 int svn_node_file ;
 int svn_node_unknown ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc__conflict_read_tree_conflict (scalar_t__*,int *,int *,int ,int ,int *,int *,int *) ;
 int svn_wc__db_base_get_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,int ,int ,int *) ;
 int svn_wc__db_is_wcroot (scalar_t__*,int ,int ,int *) ;
 int svn_wc__db_read_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,scalar_t__*,int ,int ,int ,int *) ;
 int svn_wc_conflict_action_edit ;
 scalar_t__ svn_wc_conflict_reason_deleted ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;
 scalar_t__ svn_wc_conflict_reason_obstructed ;
 scalar_t__ svn_wc_conflict_reason_replaced ;
 int svn_wc_notify_skip_conflicted ;
 int svn_wc_notify_update_skip_obstruction ;

__attribute__((used)) static svn_error_t *
open_file(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct file_baton *fb;
  svn_boolean_t conflicted;
  svn_boolean_t conflict_ignored = FALSE;
  svn_boolean_t have_work;
  svn_wc__db_status_t status;
  svn_node_kind_t wc_kind;
  svn_skel_t *tree_conflict = ((void*)0);



  apr_pool_t *scratch_pool = svn_pool_create(pool);

  SVN_ERR(make_file_baton(&fb, pb, path, FALSE, pool));
  *file_baton = fb;

  if (fb->skip_this)
    return SVN_NO_ERROR;


  {
    svn_boolean_t is_root;

    SVN_ERR(svn_wc__db_is_wcroot(&is_root, eb->db, fb->local_abspath,
                                 pool));

    if (is_root)
      {

        SVN_ERR(remember_skipped_tree(eb, fb->local_abspath, pool));
        fb->skip_this = TRUE;
        fb->already_notified = TRUE;

        do_notification(eb, fb->local_abspath, svn_node_file,
                        svn_wc_notify_update_skip_obstruction, pool);

        return SVN_NO_ERROR;
      }
  }



  SVN_ERR(svn_wc__db_read_info(&status, &wc_kind, &fb->old_revision,
                               &fb->old_repos_relpath, ((void*)0), ((void*)0),
                               &fb->changed_rev, &fb->changed_date,
                               &fb->changed_author, ((void*)0),
                               &fb->original_checksum, ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               &conflicted, ((void*)0), ((void*)0), &fb->local_prop_mods,
                               ((void*)0), ((void*)0), &have_work,
                               eb->db, fb->local_abspath,
                               fb->pool, scratch_pool));

  if (have_work)
    SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0), &fb->old_revision,
                                     &fb->old_repos_relpath, ((void*)0), ((void*)0),
                                     &fb->changed_rev, &fb->changed_date,
                                     &fb->changed_author, ((void*)0),
                                     &fb->original_checksum, ((void*)0), ((void*)0),
                                     ((void*)0), ((void*)0), ((void*)0),
                                     eb->db, fb->local_abspath,
                                     fb->pool, scratch_pool));

  SVN_ERR(calculate_repos_relpath(&fb->new_repos_relpath, fb->local_abspath,
                                  fb->old_repos_relpath, eb, pb,
                                  fb->pool, scratch_pool));


  if (fb->shadowed)
    conflicted = FALSE;
  else if (conflicted)
    SVN_ERR(node_already_conflicted(&conflicted, &conflict_ignored,
                                    eb->db, fb->local_abspath, pool));
  if (conflicted)
    {
      SVN_ERR(remember_skipped_tree(eb, fb->local_abspath, pool));

      fb->skip_this = TRUE;
      fb->already_notified = TRUE;

      do_notification(eb, fb->local_abspath, svn_node_unknown,
                      svn_wc_notify_skip_conflicted, scratch_pool);

      svn_pool_destroy(scratch_pool);

      return SVN_NO_ERROR;
    }
  else if (conflict_ignored)
    {
      fb->shadowed = TRUE;
    }



  if (!fb->shadowed)
    SVN_ERR(check_tree_conflict(&tree_conflict, eb, fb->local_abspath,
                                status, TRUE, svn_node_file,
                                svn_wc_conflict_action_edit,
                                fb->pool, scratch_pool));


  if (tree_conflict != ((void*)0))
    {
      svn_wc_conflict_reason_t reason;
      fb->edit_conflict = tree_conflict;


      SVN_ERR(svn_wc__conflict_read_tree_conflict(&reason, ((void*)0), ((void*)0),
                                                  eb->db, fb->local_abspath,
                                                  tree_conflict,
                                                  scratch_pool, scratch_pool));
      SVN_ERR_ASSERT(reason == svn_wc_conflict_reason_deleted
                     || reason == svn_wc_conflict_reason_moved_away
                     || reason == svn_wc_conflict_reason_replaced
                     || reason == svn_wc_conflict_reason_obstructed);


      if (reason == svn_wc_conflict_reason_obstructed)
        fb->edit_obstructed = TRUE;
      else
        fb->shadowed = TRUE;
    }

  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
