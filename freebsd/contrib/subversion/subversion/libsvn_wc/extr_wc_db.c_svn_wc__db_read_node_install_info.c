
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* abspath; int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int STMT_SELECT_NODE_INFO ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_is_ancestor (char const*,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_createf (int ,int ,int ,int ,...) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int * svn_sqlite__column_checksum (int const**,int *,int,int *) ;
 int svn_sqlite__column_int64 (int *,int) ;
 int * svn_sqlite__column_properties (int **,int *,int,int *,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_read_node_install_info(const char **wcroot_abspath,
                                  const svn_checksum_t **sha1_checksum,
                                  apr_hash_t **pristine_props,
                                  apr_time_t *changed_date,
                                  svn_wc__db_t *db,
                                  const char *local_abspath,
                                  const char *wri_abspath,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_error_t *err = ((void*)0);
  svn_boolean_t have_row;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  if (!wri_abspath)
    wri_abspath = local_abspath;

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              wri_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  if (local_abspath != wri_abspath
      && strcmp(local_abspath, wri_abspath))
    {
      if (!svn_dirent_is_ancestor(wcroot->abspath, local_abspath))
        return svn_error_createf(
                    SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                    _("The node '%s' is not in working copy '%s'"),
                    svn_dirent_local_style(local_abspath, scratch_pool),
                    svn_dirent_local_style(wcroot->abspath, scratch_pool));

      local_relpath = svn_dirent_skip_ancestor(wcroot->abspath, local_abspath);
    }

  if (wcroot_abspath != ((void*)0))
    *wcroot_abspath = apr_pstrdup(result_pool, wcroot->abspath);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));

  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (have_row)
    {
      if (sha1_checksum)
        err = svn_sqlite__column_checksum(sha1_checksum, stmt, 6, result_pool);

      if (!err && pristine_props)
        {
          err = svn_sqlite__column_properties(pristine_props, stmt, 14,
                                              result_pool, scratch_pool);

          if (*pristine_props == ((void*)0))
            *pristine_props = apr_hash_make(result_pool);
        }

      if (changed_date)
        *changed_date = svn_sqlite__column_int64(stmt, 9);
    }
  else
    return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND,
                             svn_sqlite__reset(stmt),
                             _("The node '%s' is not installable"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  SVN_ERR(svn_error_compose_create(err, svn_sqlite__reset(stmt)));

  return SVN_NO_ERROR;
}
