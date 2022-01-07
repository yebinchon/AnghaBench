
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wc_id; int sdb; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_boolean_t ;
struct svn_wc__db_base_info_t {scalar_t__ kind; scalar_t__ status; scalar_t__ revnum; char* repos_relpath; scalar_t__ update_root; } ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int STMT_DELETE_BASE_NODE ;
 int SVN_ERR (int *) ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 struct svn_wc__db_base_info_t* apr_hash_this_val (int *) ;
 int * base_get_children_info (int **,TYPE_1__*,char const*,int ,int *,int *) ;
 int * db_op_set_rev_repos_relpath_iprops (TYPE_1__*,char const*,int *,scalar_t__,int,char const*,int ,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 char const* svn_dirent_join (int ,char const*,int *) ;
 int * svn_hash_gets (int *,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int * svn_sqlite__step_done (int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
bump_node_revision(svn_wc__db_wcroot_t *wcroot,
                   const char *local_relpath,
                   svn_wc__db_status_t node_status,
                   svn_node_kind_t node_kind,
                   svn_revnum_t node_revision,
                   const char *node_repos_relpath,
                   apr_int64_t new_repos_id,
                   const char *new_repos_relpath,
                   svn_revnum_t new_rev,
                   svn_depth_t depth,
                   apr_hash_t *exclude_relpaths,
                   apr_hash_t *wcroot_iprops,
                   svn_boolean_t is_root,
                   svn_boolean_t skip_when_dir,
                   svn_wc__db_t *db,
                   apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;
  apr_hash_t *children;
  apr_hash_index_t *hi;
  svn_boolean_t set_repos_relpath = FALSE;
  svn_depth_t depth_below_here = depth;
  apr_array_header_t *iprops = ((void*)0);

  if (new_repos_relpath != ((void*)0)
      && strcmp(node_repos_relpath, new_repos_relpath))
    set_repos_relpath = TRUE;

  if (wcroot_iprops)
    iprops = svn_hash_gets(wcroot_iprops,
                           svn_dirent_join(wcroot->abspath, local_relpath,
                                           scratch_pool));

  if (iprops
      || set_repos_relpath
      || (SVN_IS_VALID_REVNUM(new_rev) && new_rev != node_revision))
    {
      SVN_ERR(db_op_set_rev_repos_relpath_iprops(wcroot, local_relpath,
                                                 iprops, new_rev,
                                                 set_repos_relpath,
                                                 new_repos_relpath,
                                                 new_repos_id,
                                                 scratch_pool));
    }


  if (depth <= svn_depth_empty
      || node_kind != svn_node_dir
      || node_status == svn_wc__db_status_server_excluded
      || node_status == svn_wc__db_status_excluded
      || node_status == svn_wc__db_status_not_present)
    return SVN_NO_ERROR;



  depth_below_here = depth;

  if (depth == svn_depth_immediates || depth == svn_depth_files)
    depth_below_here = svn_depth_empty;

  iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(base_get_children_info(&children, wcroot, local_relpath, 0,
                                 scratch_pool, iterpool));
  for (hi = apr_hash_first(scratch_pool, children); hi; hi = apr_hash_next(hi))
    {
      const char *child_basename = apr_hash_this_key(hi);
      const struct svn_wc__db_base_info_t *child_info;
      const char *child_local_relpath;
      const char *child_repos_relpath = ((void*)0);

      svn_pool_clear(iterpool);

      child_info = apr_hash_this_val(hi);

      if (child_info->update_root && child_info->kind == svn_node_file)
        continue;

      if (depth < svn_depth_immediates && child_info->kind == svn_node_dir)
          continue;

      child_local_relpath = svn_relpath_join(local_relpath, child_basename,
                                             iterpool);


      if (svn_hash_gets(exclude_relpaths, child_local_relpath))
          continue;
      if (child_info->status == svn_wc__db_status_not_present
          || (child_info->status == svn_wc__db_status_server_excluded &&
              child_info->revnum != new_rev))
        {
          svn_sqlite__stmt_t *stmt;
          SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_DELETE_BASE_NODE));
          SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, child_local_relpath));
          SVN_ERR(svn_sqlite__step_done(stmt));
          continue;
        }


      if (new_repos_relpath)
        child_repos_relpath = svn_relpath_join(new_repos_relpath,
                                               child_basename, iterpool);

      SVN_ERR(bump_node_revision(wcroot, child_local_relpath,
                                 child_info->status,
                                 child_info->kind,
                                 child_info->revnum,
                                 child_info->repos_relpath,
                                 new_repos_id,
                                 child_repos_relpath, new_rev,
                                 depth_below_here,
                                 exclude_relpaths, wcroot_iprops,
                                 FALSE ,
                                 (depth < svn_depth_immediates), db,
                                 iterpool));
    }


  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
