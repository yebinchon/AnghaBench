
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


 int FALSE ;
 int STMT_SELECT_WORKING_NODE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_int (int *,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int*,int *) ;

__attribute__((used)) static svn_error_t *
check_node_shadowed(svn_boolean_t *shadowed,
                    svn_wc__db_wcroot_t *wcroot,
                    const char *local_relpath,
                    int move_root_dst_op_depth,
                    apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_WORKING_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (have_row)
    {
      int op_depth = svn_sqlite__column_int(stmt, 0);

      *shadowed = (op_depth > move_root_dst_op_depth);
    }
  else
    *shadowed = FALSE;
  SVN_ERR(svn_sqlite__reset(stmt));

  return SVN_NO_ERROR;
}
