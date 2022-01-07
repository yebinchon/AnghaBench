
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
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int STMT_SELECT_EXTERNALS_DEFINED ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int * apr_hash_make (int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_externals_defined_below(apr_hash_t **externals,
                                   svn_wc__db_t *db,
                                   const char *local_abspath,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  svn_sqlite__stmt_t *stmt;
  const char *local_relpath;
  svn_boolean_t have_row;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_EXTERNALS_DEFINED));

  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  *externals = apr_hash_make(result_pool);
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  while (have_row)
    {
      const char *def_local_relpath;

      local_relpath = svn_sqlite__column_text(stmt, 0, ((void*)0));
      def_local_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));

      svn_hash_sets(*externals,
                    svn_dirent_join(wcroot->abspath, local_relpath,
                                    result_pool),
                    svn_dirent_join(wcroot->abspath, def_local_relpath,
                                    result_pool));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }

  return svn_error_trace(svn_sqlite__reset(stmt));
}
