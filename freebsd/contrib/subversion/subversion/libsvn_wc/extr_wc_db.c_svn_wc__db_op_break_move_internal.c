
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sdb; int wc_id; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int STMT_CLEAR_MOVED_TO_RELPATH ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_work_items (int ,int const*,int *) ;
 int clear_moved_here (TYPE_1__*,char const*,int *) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__update (int*,int *) ;

svn_error_t *
svn_wc__db_op_break_move_internal(svn_wc__db_wcroot_t *wcroot,
                                  const char *src_relpath,
                                  int delete_op_depth,
                                  const char *dst_relpath,
                                  const svn_skel_t *work_items,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_CLEAR_MOVED_TO_RELPATH));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, src_relpath,
                            delete_op_depth));
  SVN_ERR(svn_sqlite__update(&affected, stmt));

  if (affected != 1)
    return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                             _("Path '%s' is not moved"),
                             path_for_error_message(wcroot, src_relpath,
                                                    scratch_pool));

  SVN_ERR(clear_moved_here(wcroot, dst_relpath, scratch_pool));

  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));
  return SVN_NO_ERROR;
}
