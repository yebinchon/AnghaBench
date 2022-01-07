
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_conflict_version_t ;
typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int create_tree_conflict (int **,int *,char const*,char const*,int *,int *,int *,int ,int ,int ,char const*,int ,int ,char const*,int *,int *) ;
 int relpath_depth (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 char* svn_relpath_skip_ancestor (char const*,char const*) ;
 int svn_wc__db_depth_get_info (int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int,int *,int *) ;
 int svn_wc__db_fetch_repos_info (char const**,char const**,int *,int ,int *) ;
 int svn_wc_conflict_action_edit ;
 int svn_wc_conflict_reason_moved_away ;
 int * svn_wc_conflict_version_create2 (char const*,char const*,char const*,int ,int ,int *) ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_tree_conflict ;
 int svn_wc_operation_update ;
 int update_move_list_add (int *,char const*,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int verify_write_lock (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
bump_mark_tree_conflict(svn_wc__db_wcroot_t *wcroot,
                        const char *move_src_root_relpath,
                        int src_op_depth,
                        const char *move_src_op_root_relpath,
                        const char *move_dst_op_root_relpath,
                        svn_wc__db_t *db,
                        apr_pool_t *scratch_pool)
{
  apr_int64_t repos_id;
  const char *repos_root_url;
  const char *repos_uuid;
  const char *old_repos_relpath;
  const char *new_repos_relpath;
  svn_revnum_t old_rev;
  svn_revnum_t new_rev;
  svn_node_kind_t old_kind;
  svn_node_kind_t new_kind;
  svn_wc_conflict_version_t *old_version;
  svn_wc_conflict_version_t *new_version;
  svn_skel_t *conflict;


  SVN_ERR(verify_write_lock(wcroot, move_src_root_relpath, scratch_pool));


  SVN_ERR(svn_wc__db_depth_get_info(((void*)0), &new_kind, &new_rev,
                                    &new_repos_relpath, &repos_id,
                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                    ((void*)0), ((void*)0), ((void*)0),
                                    wcroot, move_src_op_root_relpath,
                                    src_op_depth, scratch_pool, scratch_pool));
  SVN_ERR(svn_wc__db_fetch_repos_info(&repos_root_url, &repos_uuid,
                                      wcroot, repos_id, scratch_pool));
  SVN_ERR(svn_wc__db_depth_get_info(((void*)0), &old_kind, &old_rev,
                                    &old_repos_relpath, ((void*)0), ((void*)0), ((void*)0),
                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                    wcroot, move_dst_op_root_relpath,
                                    relpath_depth(move_dst_op_root_relpath),
                                    scratch_pool, scratch_pool));

  if (strcmp(move_src_root_relpath, move_src_op_root_relpath))
    {




      const char *rpath = svn_relpath_skip_ancestor(move_src_op_root_relpath,
                                                    move_src_root_relpath);

      old_repos_relpath = svn_relpath_join(old_repos_relpath, rpath,
                                           scratch_pool);
      new_repos_relpath = svn_relpath_join(new_repos_relpath, rpath,
                                           scratch_pool);
    }

  old_version = svn_wc_conflict_version_create2(
                  repos_root_url, repos_uuid, old_repos_relpath, old_rev,
                  old_kind, scratch_pool);
  new_version = svn_wc_conflict_version_create2(
                  repos_root_url, repos_uuid, new_repos_relpath, new_rev,
                  new_kind, scratch_pool);

  SVN_ERR(create_tree_conflict(&conflict, wcroot, move_src_root_relpath,
                               move_dst_op_root_relpath,
                               db, old_version, new_version,
                               svn_wc_operation_update,
                               old_kind, new_kind,
                               old_repos_relpath,
                               svn_wc_conflict_reason_moved_away,
                               svn_wc_conflict_action_edit,
                               move_src_op_root_relpath,
                               scratch_pool, scratch_pool));

  SVN_ERR(update_move_list_add(wcroot, move_src_root_relpath, db,
                               svn_wc_notify_tree_conflict,
                               new_kind,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, ((void*)0), scratch_pool));

  return SVN_NO_ERROR;
}
