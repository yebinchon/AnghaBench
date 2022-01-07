
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
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int STMT_INSERT_ACTUAL_NODE ;
 int STMT_INSERT_WORKING_NODE_COPY_FROM ;
 int STMT_SELECT_ACTUAL_NODE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int presence_map ;
 int relpath_depth (char const*) ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 char* svn_sqlite__column_blob (int *,int,int *,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_sqlite__step_done (int *) ;
 int svn_wc__db_status_normal ;

__attribute__((used)) static svn_error_t *
copy_working_node(const char *src_relpath,
                  const char *dst_relpath,
                  svn_wc__db_wcroot_t *wcroot,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  const char *dst_parent_relpath = svn_relpath_dirname(dst_relpath,
                                                       scratch_pool);


  SVN_ERR(svn_sqlite__get_statement(&stmt,wcroot->sdb,
                                    STMT_INSERT_WORKING_NODE_COPY_FROM));
  SVN_ERR(svn_sqlite__bindf(stmt, "issdst", wcroot->wc_id, src_relpath,
                            dst_relpath, relpath_depth(dst_relpath),
                            dst_parent_relpath, presence_map,
                            svn_wc__db_status_normal));
  SVN_ERR(svn_sqlite__step_done(stmt));


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, src_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (have_row)
    {
      apr_size_t props_size;
      const char *properties;

      properties = svn_sqlite__column_blob(stmt, 1, &props_size,
                                           scratch_pool);
      SVN_ERR(svn_sqlite__reset(stmt));
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_INSERT_ACTUAL_NODE));
      SVN_ERR(svn_sqlite__bindf(stmt, "issbs",
                                wcroot->wc_id, dst_relpath,
                                svn_relpath_dirname(dst_relpath,
                                                    scratch_pool),
                                properties, props_size, ((void*)0)));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));

  return SVN_NO_ERROR;
}
