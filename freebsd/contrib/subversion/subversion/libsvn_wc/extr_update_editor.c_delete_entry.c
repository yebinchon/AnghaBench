
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_action_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct edit_baton {char const* target_abspath; int target_deleted; int cancel_baton; int cancel_func; int conflict_baton; scalar_t__ conflict_func; int db; int * target_revision; } ;
struct dir_baton {scalar_t__ edit_obstructed; scalar_t__ shadowed; int local_abspath; int pool; scalar_t__ deletion_conflicts; scalar_t__ old_repos_relpath; scalar_t__ skip_this; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_hash_make (int ) ;
 int apr_pstrdup (int ,char const*) ;
 int calculate_repos_relpath (char const**,char const*,char const*,struct edit_baton*,struct dir_baton*,int *,int *) ;
 int check_tree_conflict (int **,struct edit_baton*,char const*,scalar_t__,int,int ,int ,int ,int *) ;
 int complete_conflict (int *,struct edit_baton*,char const*,char const*,int ,char const*,int ,int ,int *,int ,int *) ;
 int do_notification (struct edit_baton*,char const*,int ,int ,int *) ;
 int mark_directory_edited (struct dir_baton*,int *) ;
 int node_already_conflicted (int*,int *,int ,char const*,int *) ;
 int path_join_under_root (char const**,int ,char const*,int *) ;
 int remember_skipped_tree (struct edit_baton*,char const*,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_hash_sets (scalar_t__,int ,int *) ;
 int svn_node_none ;
 int svn_node_unknown ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_skip_ancestor (scalar_t__,char const*) ;
 int svn_wc__conflict_invoke_resolver (int ,char const*,int ,int *,int *,scalar_t__,int ,int ,int ,int *) ;
 int svn_wc__db_base_get_info (scalar_t__*,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 int svn_wc__db_base_remove (int ,char const*,int,int,int,int ,int *,int *,int *) ;
 int svn_wc__db_is_wcroot (int*,int ,char const*,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int*,int *,int *,int *,int *,int *,int*,int ,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 int svn_wc__wq_run (int ,int ,int ,int ,int *) ;
 int svn_wc_conflict_action_delete ;
 int svn_wc_notify_skip_conflicted ;
 int svn_wc_notify_tree_conflict ;
 int svn_wc_notify_update_delete ;
 int svn_wc_notify_update_shadowed_delete ;
 int svn_wc_notify_update_skip_obstruction ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  const char *base = svn_relpath_basename(path, ((void*)0));
  const char *local_abspath;
  const char *repos_relpath;
  const char *deleted_repos_relpath;
  svn_node_kind_t kind;
  svn_revnum_t old_revision;
  svn_boolean_t conflicted;
  svn_boolean_t have_work;
  svn_skel_t *tree_conflict = ((void*)0);
  svn_wc__db_status_t status;
  svn_wc__db_status_t base_status;
  apr_pool_t *scratch_pool;
  svn_boolean_t deleting_target;
  svn_boolean_t deleting_switched;

  if (pb->skip_this)
    return SVN_NO_ERROR;

  scratch_pool = svn_pool_create(pb->pool);

  SVN_ERR(mark_directory_edited(pb, scratch_pool));

  SVN_ERR(path_join_under_root(&local_abspath, pb->local_abspath, base,
                               scratch_pool));

  deleting_target = (strcmp(local_abspath, eb->target_abspath) == 0);


  {
    svn_boolean_t is_root;


    SVN_ERR(svn_wc__db_is_wcroot(&is_root, eb->db, local_abspath,
                                 scratch_pool));

    if (is_root)
      {

        SVN_ERR(remember_skipped_tree(eb, local_abspath, pool));
        do_notification(eb, local_abspath, svn_node_unknown,
                        svn_wc_notify_update_skip_obstruction, scratch_pool);

        svn_pool_destroy(scratch_pool);

        return SVN_NO_ERROR;
      }
  }

  SVN_ERR(svn_wc__db_read_info(&status, &kind, &old_revision, &repos_relpath,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               &conflicted, ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), &have_work,
                               eb->db, local_abspath,
                               scratch_pool, scratch_pool));

  if (!have_work)
    {
      base_status = status;
    }
  else
    SVN_ERR(svn_wc__db_base_get_info(&base_status, ((void*)0), &old_revision,
                                     &repos_relpath,
                                     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     eb->db, local_abspath,
                                     scratch_pool, scratch_pool));

  if (pb->old_repos_relpath && repos_relpath)
    {
      const char *expected_name;

      expected_name = svn_relpath_skip_ancestor(pb->old_repos_relpath,
                                                repos_relpath);

      deleting_switched = (!expected_name || strcmp(expected_name, base) != 0);
    }
  else
    deleting_switched = FALSE;


  if (pb->shadowed)
    conflicted = FALSE;
  else if (conflicted)
    SVN_ERR(node_already_conflicted(&conflicted, ((void*)0),
                                    eb->db, local_abspath, scratch_pool));
  if (conflicted)
    {
      SVN_ERR(remember_skipped_tree(eb, local_abspath, scratch_pool));

      do_notification(eb, local_abspath, svn_node_unknown,
                      svn_wc_notify_skip_conflicted,
                      scratch_pool);

      svn_pool_destroy(scratch_pool);

      return SVN_NO_ERROR;
    }




  if (base_status == svn_wc__db_status_not_present
      || base_status == svn_wc__db_status_excluded
      || base_status == svn_wc__db_status_server_excluded)
    {
      SVN_ERR(svn_wc__db_base_remove(eb->db, local_abspath, TRUE,
                                     deleting_target, FALSE,
                                     *eb->target_revision,
                                     ((void*)0), ((void*)0),
                                     scratch_pool));

      if (deleting_target)
        eb->target_deleted = TRUE;

      svn_pool_destroy(scratch_pool);

      return SVN_NO_ERROR;
    }
  if (!pb->shadowed && !pb->edit_obstructed)
    {
      SVN_ERR(check_tree_conflict(&tree_conflict, eb, local_abspath,
                                  status, TRUE,
                                  kind,
                                  svn_wc_conflict_action_delete,
                                  pb->pool, scratch_pool));
    }

  if (tree_conflict != ((void*)0))
    {




      if (!pb->deletion_conflicts)
        pb->deletion_conflicts = apr_hash_make(pb->pool);

      svn_hash_sets(pb->deletion_conflicts, apr_pstrdup(pb->pool, base),
                    tree_conflict);



    }




  SVN_ERR(calculate_repos_relpath(&deleted_repos_relpath, local_abspath,
                                  repos_relpath, eb, pb, scratch_pool,
                                  scratch_pool));
  SVN_ERR(complete_conflict(tree_conflict, eb, local_abspath, repos_relpath,
                            old_revision, deleted_repos_relpath,
                            kind, svn_node_none, ((void*)0),
                            pb->pool, scratch_pool));
  if (! deleting_target && ! deleting_switched)
    {

      SVN_ERR(svn_wc__db_base_remove(eb->db, local_abspath,
                                     (tree_conflict != ((void*)0)),
                                     FALSE, FALSE,
                                     SVN_INVALID_REVNUM ,
                                     tree_conflict, ((void*)0),
                                     scratch_pool));
    }
  else
    {

      SVN_ERR(svn_wc__db_base_remove(eb->db, local_abspath,
                                     (tree_conflict != ((void*)0)),
                                     TRUE, FALSE,
                                     *eb->target_revision,
                                     tree_conflict, ((void*)0),
                                     scratch_pool));
      if (deleting_target)
        eb->target_deleted = TRUE;
      else
        {

          SVN_ERR(remember_skipped_tree(eb, local_abspath, pool));
        }
    }

  SVN_ERR(svn_wc__wq_run(eb->db, pb->local_abspath,
                         eb->cancel_func, eb->cancel_baton,
                         scratch_pool));


  if (tree_conflict)
    {
      if (eb->conflict_func)
        SVN_ERR(svn_wc__conflict_invoke_resolver(eb->db, local_abspath,
                                                 kind,
                                                 tree_conflict,
                                                 ((void*)0) ,
                                                 eb->conflict_func,
                                                 eb->conflict_baton,
                                                 eb->cancel_func,
                                                 eb->cancel_baton,
                                                 scratch_pool));
      do_notification(eb, local_abspath, kind,
                      svn_wc_notify_tree_conflict, scratch_pool);
    }
  else
    {
      svn_wc_notify_action_t action = svn_wc_notify_update_delete;

      if (pb->shadowed || pb->edit_obstructed)
        action = svn_wc_notify_update_shadowed_delete;

      do_notification(eb, local_abspath, kind, action, scratch_pool);
    }

  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
