
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
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int,char const*) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__update (int*,int *) ;

__attribute__((used)) static svn_error_t *
delete_update_movedto(svn_wc__db_wcroot_t *wcroot,
                      const char *child_moved_from_relpath,
                      int op_depth,
                      const char *new_moved_to_relpath,
                      apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_UPDATE_MOVED_TO_RELPATH));

  SVN_ERR(svn_sqlite__bindf(stmt, "isds",
                            wcroot->wc_id,
                            child_moved_from_relpath,
                            op_depth,
                            new_moved_to_relpath));
  SVN_ERR(svn_sqlite__update(&affected, stmt));






  return SVN_NO_ERROR;
}
