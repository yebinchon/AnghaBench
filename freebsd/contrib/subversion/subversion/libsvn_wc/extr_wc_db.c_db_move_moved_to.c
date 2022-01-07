
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int STMT_UPDATE_MOVED_TO_RELPATH ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int,...) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__update (int*,int *) ;

__attribute__((used)) static svn_error_t *
db_move_moved_to(svn_wc__db_wcroot_t *wcroot,
                 const char *src1_relpath,
                 int src1_op_depth,
                 const char *src2_relpath,
                 int src2_op_depth,
                 const char *dst_relpath,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected_rows;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                     STMT_UPDATE_MOVED_TO_RELPATH));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id,
                            src1_relpath, src1_op_depth));
  SVN_ERR(svn_sqlite__update(&affected_rows, stmt));

  if (affected_rows == 1)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                     STMT_UPDATE_MOVED_TO_RELPATH));
      SVN_ERR(svn_sqlite__bindf(stmt, "isds", wcroot->wc_id,
                                src2_relpath, src2_op_depth,
                                dst_relpath));
      SVN_ERR(svn_sqlite__update(&affected_rows, stmt));
    }
  if (affected_rows != 1)
    return svn_error_create(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0), ((void*)0));

  return SVN_NO_ERROR;
}
