
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_INSTALL_WORKING_NODE_FOR_DELETE ;
 int STMT_SELECT_LOWEST_WORKING_NODE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (char const) ;
 int * SVN_NO_ERROR ;
 int kind_map ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int,...) ;
 int svn_sqlite__column_int (int *,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_sqlite__update (int *,int *) ;

__attribute__((used)) static svn_error_t *
db_extend_parent_delete(svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        svn_node_kind_t kind,
                        int op_depth,
                        apr_pool_t *scratch_pool)
{
  svn_boolean_t have_row;
  svn_sqlite__stmt_t *stmt;
  int parent_op_depth;
  const char *parent_relpath = svn_relpath_dirname(local_relpath, scratch_pool);

  SVN_ERR_ASSERT(local_relpath[0]);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_LOWEST_WORKING_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, parent_relpath,
                            op_depth));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (have_row)
    parent_op_depth = svn_sqlite__column_int(stmt, 0);
  SVN_ERR(svn_sqlite__reset(stmt));
  if (have_row)
    {
      int existing_op_depth;

      SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath,
                                op_depth));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      if (have_row)
        existing_op_depth = svn_sqlite__column_int(stmt, 0);
      SVN_ERR(svn_sqlite__reset(stmt));
      if (!have_row || parent_op_depth < existing_op_depth)
        {
          SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                              STMT_INSTALL_WORKING_NODE_FOR_DELETE));
          SVN_ERR(svn_sqlite__bindf(stmt, "isdst", wcroot->wc_id,
                                    local_relpath, parent_op_depth,
                                    parent_relpath, kind_map, kind));
          SVN_ERR(svn_sqlite__update(((void*)0), stmt));
        }
    }

  return SVN_NO_ERROR;
}
