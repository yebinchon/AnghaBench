
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_wc_status_func4_t ;
struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct walk_status_baton {int db; int target_abspath; } ;
struct svn_wc__db_info_t {scalar_t__ status; scalar_t__ kind; scalar_t__ has_descendants; int conflicted; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int collect_ignore_patterns (int **,int ,char const*,int const*,int *,int *) ;
 int get_dir_status (struct walk_status_baton const*,char const*,int ,char const*,char const*,char const*,struct svn_wc__db_info_t const*,TYPE_1__ const*,int const*,scalar_t__,int ,int ,int ,void*,int ,void*,int *) ;
 int send_status_structure (struct walk_status_baton const*,char const*,char const*,char const*,char const*,struct svn_wc__db_info_t const*,TYPE_1__ const*,int ,int ,void*,int *) ;
 int send_unversioned_item (struct walk_status_baton const*,char const*,TYPE_1__ const*,int ,int *,int ,int ,void*,int *) ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_infinity ;
 int svn_dirent_basename (char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 scalar_t__ svn_wc_is_adm_dir (int ,int *) ;

__attribute__((used)) static svn_error_t *
one_child_status(const struct walk_status_baton *wb,
                 const char *local_abspath,
                 const char *parent_abspath,
                 const struct svn_wc__db_info_t *info,
                 const svn_io_dirent2_t *dirent,
                 const char *dir_repos_root_url,
                 const char *dir_repos_relpath,
                 const char *dir_repos_uuid,
                 svn_boolean_t unversioned_tree_conflicted,
                 apr_array_header_t **collected_ignore_patterns,
                 const apr_array_header_t *ignore_patterns,
                 svn_depth_t depth,
                 svn_boolean_t get_all,
                 svn_boolean_t no_ignore,
                 svn_wc_status_func4_t status_func,
                 void *status_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_boolean_t conflicted = info ? info->conflicted
                                  : unversioned_tree_conflicted;

  if (info
      && info->status != svn_wc__db_status_not_present
      && info->status != svn_wc__db_status_excluded
      && info->status != svn_wc__db_status_server_excluded
      && !(info->kind == svn_node_unknown
           && info->status == svn_wc__db_status_normal))
    {
      if (depth == svn_depth_files
          && info->kind == svn_node_dir)
        {
          return SVN_NO_ERROR;
        }

      SVN_ERR(send_status_structure(wb, local_abspath,
                                    dir_repos_root_url,
                                    dir_repos_relpath,
                                    dir_repos_uuid,
                                    info, dirent, get_all,
                                    status_func, status_baton,
                                    scratch_pool));


      if (depth == svn_depth_infinity
          && info->has_descendants )
        {
          SVN_ERR(get_dir_status(wb, local_abspath, TRUE,
                                 dir_repos_root_url, dir_repos_relpath,
                                 dir_repos_uuid, info,
                                 dirent, ignore_patterns,
                                 svn_depth_infinity, get_all,
                                 no_ignore,
                                 status_func, status_baton,
                                 cancel_func, cancel_baton,
                                 scratch_pool));
        }

      return SVN_NO_ERROR;
    }






  if (! conflicted)
    {






      if (dirent == ((void*)0) && strcmp(wb->target_abspath, local_abspath) != 0)
        return SVN_NO_ERROR;

      if (depth == svn_depth_files && dirent && dirent->kind == svn_node_dir)
        return SVN_NO_ERROR;

      if (svn_wc_is_adm_dir(svn_dirent_basename(local_abspath, ((void*)0)),
                            scratch_pool))
        return SVN_NO_ERROR;
    }
  if (ignore_patterns && ! *collected_ignore_patterns)
    SVN_ERR(collect_ignore_patterns(collected_ignore_patterns,
                                    wb->db, parent_abspath, ignore_patterns,
                                    result_pool, scratch_pool));

  SVN_ERR(send_unversioned_item(wb,
                                local_abspath,
                                dirent,
                                conflicted,
                                *collected_ignore_patterns,
                                no_ignore,
                                status_func, status_baton,
                                scratch_pool));

  return SVN_NO_ERROR;
}
