
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_SELECT_ALL_NODES ;
 int STMT_SELECT_NODE_INFO ;
 int SVN_ERR (int ) ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;
 int relpath_depth (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,...) ;
 int svn_sqlite__column_int (int *,int ) ;
 scalar_t__ svn_sqlite__column_is_null (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int*,int *) ;

__attribute__((used)) static svn_error_t *
verify_wcroot(svn_wc__db_wcroot_t *wcroot,
              apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_ALL_NODES));
  SVN_ERR(svn_sqlite__bindf(stmt, "i", wcroot->wc_id));
  while (TRUE)
    {
      svn_boolean_t have_row;
      const char *local_relpath, *parent_relpath;
      int op_depth;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      if (!have_row)
        break;

      op_depth = svn_sqlite__column_int(stmt, 0);
      local_relpath = svn_sqlite__column_text(stmt, 1, iterpool);
      parent_relpath = svn_sqlite__column_text(stmt, 2, iterpool);


      VERIFY((parent_relpath == ((void*)0))
             ? (local_relpath[0] == '\0')
             : (strcmp(svn_relpath_dirname(local_relpath, iterpool),
                       parent_relpath) == 0));


      VERIFY(op_depth <= relpath_depth(local_relpath));




      if (parent_relpath && svn_sqlite__column_is_null(stmt, 3))
        {
          svn_sqlite__stmt_t *stmt2;
          svn_boolean_t have_a_parent_row;

          SVN_ERR(svn_sqlite__get_statement(&stmt2, wcroot->sdb,
                                            STMT_SELECT_NODE_INFO));
          SVN_ERR(svn_sqlite__bindf(stmt2, "is", wcroot->wc_id,
                                    parent_relpath));
          SVN_ERR(svn_sqlite__step(&have_a_parent_row, stmt2));
          VERIFY(have_a_parent_row);
          SVN_ERR(svn_sqlite__reset(stmt2));
        }
    }
  svn_pool_destroy(iterpool);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
