
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int STMT_SELECT_MOVED_DESCENDANTS_SRC ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,char const*,char const*) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
moved_descendant_collect(apr_hash_t **map,
                        svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        int op_depth,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *map = ((void*)0);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_DESCENDANTS_SRC));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id,
                                         local_relpath,
                                         op_depth));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (! have_row)
    return svn_error_trace(svn_sqlite__reset(stmt));



  while (have_row)
    {
      const char *src_relpath = svn_sqlite__column_text(stmt, 1, result_pool);
      const char *to_relpath = svn_sqlite__column_text(stmt, 4, result_pool);

      if (!*map)
        *map = apr_hash_make(result_pool);

      svn_hash_sets(*map, to_relpath, src_relpath);

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));

  return SVN_NO_ERROR;
}
