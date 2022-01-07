
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ svn_wc_operation_t ;
struct TYPE_21__ {char const* path_in_repos; int peg_rev; int repos_uuid; int repos_url; } ;
typedef TYPE_1__ svn_wc_conflict_version_t ;
typedef scalar_t__ svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc_conflict_action_t ;
struct TYPE_22__ {int abspath; } ;
typedef TYPE_2__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
struct TYPE_23__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_FOUND_CONFLICT ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_3__* SVN_NO_ERROR ;
 int _ (char*) ;
 int assert (int) ;
 int path_for_error_message (TYPE_2__*,char const*,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_dirent_skip_ancestor (int ,char const*) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 char* svn_relpath_skip_ancestor (char const*,char const*) ;
 int svn_wc__conflict_read_info (scalar_t__*,int *,int *,int *,scalar_t__*,int *,int ,int *,int *,int *) ;
 int svn_wc__conflict_read_tree_conflict (scalar_t__*,scalar_t__*,char const**,int *,int ,int *,int *,int *) ;
 int svn_wc__conflict_skel_add_tree_conflict (int *,int *,char*,scalar_t__,scalar_t__,char const*,int *,int *) ;
 int * svn_wc__conflict_skel_create (int *) ;
 int svn_wc__conflict_skel_set_op_switch (int *,TYPE_1__*,TYPE_1__*,int *,int *) ;
 int svn_wc__conflict_skel_set_op_update (int *,TYPE_1__*,TYPE_1__*,int *,int *) ;
 TYPE_3__* svn_wc__db_read_conflict_internal (int **,int *,int *,TYPE_2__*,char const*,int *,int *) ;
 scalar_t__ svn_wc_conflict_reason_moved_away ;
 TYPE_1__* svn_wc_conflict_version_create2 (int ,int ,char const*,int ,int ,int *) ;
 scalar_t__ svn_wc_operation_switch ;
 scalar_t__ svn_wc_operation_update ;

__attribute__((used)) static svn_error_t *
create_tree_conflict(svn_skel_t **conflict_p,
                     svn_wc__db_wcroot_t *wcroot,
                     const char *local_relpath,
                     const char *dst_op_root_relpath,
                     svn_wc__db_t *db,
                     const svn_wc_conflict_version_t *old_version,
                     const svn_wc_conflict_version_t *new_version,
                     svn_wc_operation_t operation,
                     svn_node_kind_t old_kind,
                     svn_node_kind_t new_kind,
                     const char *old_repos_relpath,
                     svn_wc_conflict_reason_t reason,
                     svn_wc_conflict_action_t action,
                     const char *move_src_op_root_relpath,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_skel_t *conflict;
  svn_wc_conflict_version_t *conflict_old_version, *conflict_new_version;
  const char *move_src_op_root_abspath
    = move_src_op_root_relpath
    ? svn_dirent_join(wcroot->abspath,
                      move_src_op_root_relpath, scratch_pool)
    : ((void*)0);
  const char *old_repos_relpath_part
    = old_repos_relpath && old_version
    ? svn_relpath_skip_ancestor(old_version->path_in_repos,
                                old_repos_relpath)
    : ((void*)0);
  const char *new_repos_relpath
    = old_repos_relpath_part
    ? svn_relpath_join(new_version->path_in_repos, old_repos_relpath_part,
                       scratch_pool)
    : ((void*)0);

  if (!new_repos_relpath)
    {
      const char *child_relpath = svn_relpath_skip_ancestor(
                                            dst_op_root_relpath,
                                            local_relpath);
      SVN_ERR_ASSERT(child_relpath != ((void*)0));
      new_repos_relpath = svn_relpath_join(new_version->path_in_repos,
                                           child_relpath, scratch_pool);
    }

  err = svn_wc__db_read_conflict_internal(&conflict, ((void*)0), ((void*)0),
                                          wcroot, local_relpath,
                                          result_pool, scratch_pool);
  if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
    return svn_error_trace(err);
  else if (err)
    {
      svn_error_clear(err);
      conflict = ((void*)0);
    }

  if (conflict)
    {
      svn_wc_operation_t conflict_operation;
      svn_boolean_t tree_conflicted;

      SVN_ERR(svn_wc__conflict_read_info(&conflict_operation, ((void*)0), ((void*)0), ((void*)0),
                                         &tree_conflicted,
                                         db, wcroot->abspath, conflict,
                                         scratch_pool, scratch_pool));

      if (conflict_operation != svn_wc_operation_update
          && conflict_operation != svn_wc_operation_switch)
        return svn_error_createf(SVN_ERR_WC_FOUND_CONFLICT, ((void*)0),
                                 _("'%s' already in conflict"),
                                 path_for_error_message(wcroot, local_relpath,
                                                        scratch_pool));

      if (tree_conflicted)
        {
          svn_wc_conflict_reason_t existing_reason;
          svn_wc_conflict_action_t existing_action;
          const char *existing_abspath;

          SVN_ERR(svn_wc__conflict_read_tree_conflict(&existing_reason,
                                                      &existing_action,
                                                      &existing_abspath,
                                                      db, wcroot->abspath,
                                                      conflict,
                                                      scratch_pool,
                                                      scratch_pool));
          if (reason != existing_reason
              || action != existing_action
              || (reason == svn_wc_conflict_reason_moved_away
                  && strcmp(move_src_op_root_relpath,
                            svn_dirent_skip_ancestor(wcroot->abspath,
                                                     existing_abspath))))
            return svn_error_createf(SVN_ERR_WC_FOUND_CONFLICT, ((void*)0),
                                     _("'%s' already in conflict"),
                                     path_for_error_message(wcroot,
                                                            local_relpath,
                                                            scratch_pool));


          *conflict_p = conflict;
          return SVN_NO_ERROR;
        }
    }
  else
    conflict = svn_wc__conflict_skel_create(result_pool);

  SVN_ERR(svn_wc__conflict_skel_add_tree_conflict(
                     conflict, db,
                     svn_dirent_join(wcroot->abspath, local_relpath,
                                     scratch_pool),
                     reason,
                     action,
                     move_src_op_root_abspath,
                     result_pool,
                     scratch_pool));

  if (old_version)
    conflict_old_version = svn_wc_conflict_version_create2(
                                 old_version->repos_url,
                                 old_version->repos_uuid,
                                 old_repos_relpath, old_version->peg_rev,
                                 old_kind, scratch_pool);
  else
    conflict_old_version = ((void*)0);

  conflict_new_version = svn_wc_conflict_version_create2(
                           new_version->repos_url, new_version->repos_uuid,
                           new_repos_relpath, new_version->peg_rev,
                           new_kind, scratch_pool);

  if (operation == svn_wc_operation_update)
    {
      SVN_ERR(svn_wc__conflict_skel_set_op_update(
                conflict, conflict_old_version, conflict_new_version,
                result_pool, scratch_pool));
    }
  else
    {
      assert(operation == svn_wc_operation_switch);
      SVN_ERR(svn_wc__conflict_skel_set_op_switch(
                  conflict, conflict_old_version, conflict_new_version,
                  result_pool, scratch_pool));
    }

  *conflict_p = conflict;
  return SVN_NO_ERROR;
}
