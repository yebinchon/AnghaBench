
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_status_func4_t ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
struct walk_status_baton {int db; int check_working_copy; } ;
struct svn_wc__db_info_t {int dummy; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int get_repos_root_url_relpath (char const**,char const**,char const**,struct svn_wc__db_info_t const*,int *,int *,int *,int ,char const*,int *,int *) ;
 int one_child_status (struct walk_status_baton const*,char const*,char const*,struct svn_wc__db_info_t const*,TYPE_1__ const*,char const*,char const*,char const*,int ,int **,int const*,int ,int ,int ,int ,void*,int (*) (void*),void*,int *,int *) ;
 int svn_depth_empty ;
 char* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_node_none ;
 int svn_wc__db_read_single_info (struct svn_wc__db_info_t const**,int ,char const*,int,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_child_status(const struct walk_status_baton *wb,
                 const char *local_abspath,
                 const struct svn_wc__db_info_t *info,
                 const svn_io_dirent2_t *dirent,
                 const apr_array_header_t *ignore_patterns,
                 svn_boolean_t get_all,
                 svn_wc_status_func4_t status_func,
                 void *status_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{
  const char *dir_repos_root_url;
  const char *dir_repos_relpath;
  const char *dir_repos_uuid;
  const struct svn_wc__db_info_t *dir_info;
  apr_array_header_t *collected_ignore_patterns = ((void*)0);
  const char *parent_abspath = svn_dirent_dirname(local_abspath,
                                                  scratch_pool);

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));

  if (dirent->kind == svn_node_none)
    dirent = ((void*)0);

  SVN_ERR(svn_wc__db_read_single_info(&dir_info,
                                      wb->db, parent_abspath,
                                      !wb->check_working_copy,
                                      scratch_pool, scratch_pool));

  SVN_ERR(get_repos_root_url_relpath(&dir_repos_relpath, &dir_repos_root_url,
                                     &dir_repos_uuid, dir_info,
                                     ((void*)0), ((void*)0), ((void*)0),
                                     wb->db, parent_abspath,
                                     scratch_pool, scratch_pool));






  SVN_ERR(one_child_status(wb,
                           local_abspath,
                           parent_abspath,
                           info,
                           dirent,
                           dir_repos_root_url,
                           dir_repos_relpath,
                           dir_repos_uuid,
                           FALSE,
                           &collected_ignore_patterns,
                           ignore_patterns,
                           svn_depth_empty,
                           get_all,
                           TRUE,
                           status_func,
                           status_baton,
                           cancel_func,
                           cancel_baton,
                           scratch_pool,
                           scratch_pool));
  return SVN_NO_ERROR;
}
