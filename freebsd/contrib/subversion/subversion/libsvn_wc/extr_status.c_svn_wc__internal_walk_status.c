
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int svn_wc_status_func4_t ;
typedef int svn_wc__db_t ;
typedef int svn_io_dirent2_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct walk_status_baton {char const* target_abspath; int externals; int * repos_locks; int * repos_root; int check_working_copy; int ignore_text_mods; int * db; } ;
struct svn_wc__db_info_t {scalar_t__ status; scalar_t__ has_descendants; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int apr_hash_make (int *) ;
 TYPE_1__* get_child_status (struct walk_status_baton*,char const*,struct svn_wc__db_info_t const*,int const*,int const*,int ,int ,void*,int ,void*,int *) ;
 TYPE_1__* get_dir_status (struct walk_status_baton*,char const*,int ,int *,int *,int *,struct svn_wc__db_info_t const*,int const*,int const*,int ,int ,int ,int ,void*,int ,void*,int *) ;
 TYPE_1__* stat_wc_dirent_case_sensitive (int const**,int *,char const*,int *,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (scalar_t__,int *,int ,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_io_stat_dirent2 (int const**,char const*,int ,int ,int *,int *) ;
 TYPE_1__* svn_wc__db_externals_defined_below (int *,int *,char const*,int *,int *) ;
 TYPE_1__* svn_wc__db_read_single_info (struct svn_wc__db_info_t const**,int *,char const*,int ,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 TYPE_1__* svn_wc_get_default_ignores (int **,int *,int *) ;

svn_error_t *
svn_wc__internal_walk_status(svn_wc__db_t *db,
                             const char *local_abspath,
                             svn_depth_t depth,
                             svn_boolean_t get_all,
                             svn_boolean_t no_ignore,
                             svn_boolean_t ignore_text_mods,
                             const apr_array_header_t *ignore_patterns,
                             svn_wc_status_func4_t status_func,
                             void *status_baton,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *scratch_pool)
{
  struct walk_status_baton wb;
  const svn_io_dirent2_t *dirent;
  const struct svn_wc__db_info_t *info;
  svn_error_t *err;

  wb.db = db;
  wb.target_abspath = local_abspath;
  wb.ignore_text_mods = ignore_text_mods;
  wb.check_working_copy = TRUE;
  wb.repos_root = ((void*)0);
  wb.repos_locks = ((void*)0);



  if (!ignore_patterns)
    {
      apr_array_header_t *ignores;

      SVN_ERR(svn_wc_get_default_ignores(&ignores, ((void*)0), scratch_pool));
      ignore_patterns = ignores;
    }

  err = svn_wc__db_read_single_info(&info, db, local_abspath,
                                    FALSE ,
                                    scratch_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          svn_error_clear(err);
          info = ((void*)0);
        }
      else
        return svn_error_trace(err);

      wb.externals = apr_hash_make(scratch_pool);

      SVN_ERR(svn_io_stat_dirent2(&dirent, local_abspath, FALSE, TRUE,
                                  scratch_pool, scratch_pool));
    }
  else
    {
      SVN_ERR(svn_wc__db_externals_defined_below(&wb.externals,
                                                 db, local_abspath,
                                                 scratch_pool, scratch_pool));

      SVN_ERR(stat_wc_dirent_case_sensitive(&dirent, db, local_abspath,
                                            scratch_pool, scratch_pool));
    }

  if (info
      && info->has_descendants
      && info->status != svn_wc__db_status_not_present
      && info->status != svn_wc__db_status_excluded
      && info->status != svn_wc__db_status_server_excluded)
    {
      SVN_ERR(get_dir_status(&wb,
                             local_abspath,
                             FALSE ,
                             ((void*)0), ((void*)0), ((void*)0),
                             info,
                             dirent,
                             ignore_patterns,
                             depth,
                             get_all,
                             no_ignore,
                             status_func, status_baton,
                             cancel_func, cancel_baton,
                             scratch_pool));
    }
  else
    {



      err = get_child_status(&wb,
                             local_abspath,
                             info,
                             dirent,
                             ignore_patterns,
                             get_all,
                             status_func, status_baton,
                             cancel_func, cancel_baton,
                             scratch_pool);

      if (!info && err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {


          svn_error_clear(err);
          return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                   _("The node '%s' was not found."),
                                   svn_dirent_local_style(local_abspath,
                                                          scratch_pool));
        }
      SVN_ERR(err);
    }

  return SVN_NO_ERROR;
}
