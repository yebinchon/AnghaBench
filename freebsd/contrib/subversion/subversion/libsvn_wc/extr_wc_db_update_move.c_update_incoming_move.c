
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {void* cancel_baton; int cancel_func; TYPE_3__* wcroot; int * db; TYPE_2__* new_version; TYPE_2__* old_version; int operation; void* src_op_depth; void* dst_op_depth; int * member_0; } ;
typedef TYPE_1__ update_move_baton_t ;
typedef int svn_wc_operation_t ;
struct TYPE_14__ {int peg_rev; int repos_uuid; int repos_url; int path_in_repos; int node_kind; } ;
typedef TYPE_2__ svn_wc_conflict_version_t ;
typedef int svn_wc_conflict_reason_t ;
typedef int svn_wc_conflict_action_t ;
struct TYPE_15__ {int sdb; int abspath; } ;
typedef TYPE_3__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_16__ {char const* src_relpath; char const* dst_relpath; TYPE_1__* umb; int member_0; } ;
typedef TYPE_4__ node_move_baton_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_CREATE_UPDATE_MOVE_LIST ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 void* relpath_depth (char const*) ;
 int suitable_for_move (TYPE_3__*,char const*,int *) ;
 int svn_dirent_join (int ,char const*,int *) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int * svn_relpath_skip_ancestor (char const*,char const*) ;
 int svn_sqlite__exec_statements (int ,int ) ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_3__*,char const*,int *,int *) ;
 int svn_wc__db_depth_get_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_3__*,char const*,void*,int *,int *) ;
 int svn_wc__db_fetch_repos_info (int *,int *,TYPE_3__*,int ,int *) ;
 int svn_wc__node_has_local_mods (scalar_t__*,int *,int *,int ,int ,int ,void*,int *) ;
 int update_incoming_moved_node (TYPE_4__*,TYPE_3__*,char const*,char const*,int *) ;
 int verify_write_lock (TYPE_3__*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
update_incoming_move(svn_revnum_t *old_rev,
                    svn_revnum_t *new_rev,
                    svn_wc__db_t *db,
                    svn_wc__db_wcroot_t *wcroot,
                    const char *local_relpath,
                    const char *dst_relpath,
                    svn_wc_operation_t operation,
                    svn_wc_conflict_action_t action,
                    svn_wc_conflict_reason_t reason,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    apr_pool_t *scratch_pool)
{
  update_move_baton_t umb = { ((void*)0) };
  svn_wc_conflict_version_t old_version;
  svn_wc_conflict_version_t new_version;
  apr_int64_t repos_id;
  node_move_baton_t nmb = { 0 };
  svn_boolean_t is_modified;

  SVN_ERR_ASSERT(svn_relpath_skip_ancestor(dst_relpath, local_relpath) == ((void*)0));
  umb.src_op_depth = relpath_depth(local_relpath);
  umb.dst_op_depth = relpath_depth(dst_relpath);

  SVN_ERR(verify_write_lock(wcroot, local_relpath, scratch_pool));
  SVN_ERR(verify_write_lock(wcroot, dst_relpath, scratch_pool));


  SVN_ERR(svn_wc__node_has_local_mods(&is_modified, ((void*)0), db,
                                      svn_dirent_join(wcroot->abspath,
                                                      dst_relpath,
                                                      scratch_pool),
                                      TRUE, cancel_func, cancel_baton,
                                      scratch_pool));
  if (is_modified)
    return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                             _("Cannot merge local changes from '%s' because "
                               "'%s' already contains other local changes "
                               "(please commit or revert these other changes "
                               "and try again)"),
                             svn_dirent_local_style(
                               svn_dirent_join(wcroot->abspath, local_relpath,
                                               scratch_pool),
                               scratch_pool),
                             svn_dirent_local_style(
                               svn_dirent_join(wcroot->abspath, dst_relpath,
                                               scratch_pool),
                               scratch_pool));


  SVN_ERR(suitable_for_move(wcroot, dst_relpath, scratch_pool));


  SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), &new_version.node_kind,
                                            &new_version.peg_rev,
                                            &new_version.path_in_repos,
                                            &repos_id,
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            wcroot, dst_relpath,
                                            scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__db_fetch_repos_info(&new_version.repos_url,
                                      &new_version.repos_uuid,
                                      wcroot, repos_id,
                                      scratch_pool));


  SVN_ERR(svn_wc__db_depth_get_info(((void*)0), &old_version.node_kind,
                                    &old_version.peg_rev,
                                    &old_version.path_in_repos, &repos_id,
                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                    ((void*)0), wcroot,
                                    local_relpath, umb.src_op_depth,
                                    scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__db_fetch_repos_info(&old_version.repos_url,
                                      &old_version.repos_uuid,
                                      wcroot, repos_id,
                                      scratch_pool));
  *old_rev = old_version.peg_rev;
  *new_rev = new_version.peg_rev;

  umb.operation = operation;
  umb.old_version= &old_version;
  umb.new_version= &new_version;
  umb.db = db;
  umb.wcroot = wcroot;
  umb.cancel_func = cancel_func;
  umb.cancel_baton = cancel_baton;


  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));



  nmb.umb = &umb;
  nmb.src_relpath = local_relpath;
  nmb.dst_relpath = dst_relpath;







  SVN_ERR(update_incoming_moved_node(&nmb, wcroot, local_relpath, dst_relpath,
                                     scratch_pool));

  return SVN_NO_ERROR;
}
