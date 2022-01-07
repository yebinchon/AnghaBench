
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int abspath; int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int STMT_SELECT_EXTERNAL_PROPERTIES ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_PROP_EXTERNALS ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int * apr_hash_make (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int depth_map ;
 int svn_depth_unknown ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,char const*,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_prop_get_value (int *,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int * svn_sqlite__column_properties (int **,int *,int ,int *,int *) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__column_token_null (int *,int,int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_token__to_word (int ,int ) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_externals_gather_definitions(apr_hash_t **externals,
                                        apr_hash_t **depths,
                                        svn_wc__db_t *db,
                                        const char *local_abspath,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  svn_sqlite__stmt_t *stmt;
  const char *local_relpath;
  svn_boolean_t have_row;
  svn_error_t *err = ((void*)0);
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, iterpool));
  VERIFY_USABLE_WCROOT(wcroot);

  *externals = apr_hash_make(result_pool);
  if (depths != ((void*)0))
    *depths = apr_hash_make(result_pool);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_EXTERNAL_PROPERTIES));

  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  while (have_row)
    {
      apr_hash_t *node_props;
      const char *external_value;

      svn_pool_clear(iterpool);
      err = svn_sqlite__column_properties(&node_props, stmt, 0, iterpool,
                                          iterpool);

      if (err)
        break;

      external_value = svn_prop_get_value(node_props, SVN_PROP_EXTERNALS);

      if (external_value)
        {
          const char *node_abspath;
          const char *node_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));

          node_abspath = svn_dirent_join(wcroot->abspath, node_relpath,
                                         result_pool);

          svn_hash_sets(*externals, node_abspath,
                        apr_pstrdup(result_pool, external_value));

          if (depths)
            {
              svn_depth_t depth
                = svn_sqlite__column_token_null(stmt, 2, depth_map,
                                                svn_depth_unknown);

              svn_hash_sets(*depths, node_abspath,

                            svn_token__to_word(depth_map, depth));
            }
        }

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }

  svn_pool_destroy(iterpool);

  return svn_error_trace(svn_error_compose_create(err,
                                                  svn_sqlite__reset(stmt)));
}
