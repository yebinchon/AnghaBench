
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int apr_pool_t ;


 int STMT_UPDATE_NODE_BASE_DEPTH ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int depth_map ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__update (int*,int *) ;
 int svn_token__to_word (int ,int ) ;

__attribute__((used)) static svn_error_t *
db_op_set_base_depth(svn_wc__db_wcroot_t *wcroot,
                     const char *local_relpath,
                     svn_depth_t depth,
                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected_rows;


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_UPDATE_NODE_BASE_DEPTH));
  SVN_ERR(svn_sqlite__bindf(stmt, "iss", wcroot->wc_id, local_relpath,
                            svn_token__to_word(depth_map, depth)));
  SVN_ERR(svn_sqlite__update(&affected_rows, stmt));

  if (affected_rows == 0)
    return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                             _("The node '%s' is not a committed directory"),
                             path_for_error_message(wcroot, local_relpath,
                                                    scratch_pool));

  return SVN_NO_ERROR;
}
