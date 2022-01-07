
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int abspath; int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_string_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int STMT_SELECT_CURRENT_PROPS_RECURSIVE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int * apr_hash_make (int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_join (int ,int ,int *) ;
 int * svn_error_trace (int ) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_properties (int **,int *,int ,int *,int *) ;
 int svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_string_dup (int *,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_prop_retrieve_recursive(apr_hash_t **values,
                                   svn_wc__db_t *db,
                                   const char *local_abspath,
                                   const char *propname,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_CURRENT_PROPS_RECURSIVE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  *values = apr_hash_make(result_pool);

  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  iterpool = svn_pool_create(scratch_pool);
  while (have_row)
  {
    apr_hash_t *node_props;
    svn_string_t *value;

    svn_pool_clear(iterpool);

    SVN_ERR(svn_sqlite__column_properties(&node_props, stmt, 0,
                                          iterpool, iterpool));

    value = (node_props
                ? svn_hash_gets(node_props, propname)
                : ((void*)0));

    if (value)
      {
        svn_hash_sets(*values,
                      svn_dirent_join(wcroot->abspath,
                                      svn_sqlite__column_text(stmt, 1, ((void*)0)),
                                      result_pool),
                      svn_string_dup(value, result_pool));
      }

    SVN_ERR(svn_sqlite__step(&have_row, stmt));
  }

  svn_pool_destroy(iterpool);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
