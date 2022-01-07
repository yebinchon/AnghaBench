
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_SELECT_DEPTH_NODE ;
 int STMT_SELECT_OP_DEPTH_MOVED_TO ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (char const) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int relpath_depth (char const*) ;
 int * svn_error_createf (int ,int ,int ,int ) ;
 char* svn_relpath_dirname (char const*,int *) ;
 char* svn_relpath_prefix (char const*,int,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int) ;
 int svn_sqlite__column_int (int *,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

svn_error_t *
svn_wc__db_scan_moved_to_internal(const char **move_src_relpath,
                                  const char **move_dst_relpath,
                                  const char **delete_relpath,
                                  svn_wc__db_wcroot_t *wcroot,
                                  const char *local_relpath,
                                  int op_depth,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int delete_op_depth;
  const char *relpath = local_relpath;
  const char *dst_relpath;

  SVN_ERR_ASSERT(local_relpath[0]);

  if (move_src_relpath)
    *move_src_relpath = ((void*)0);
  if (move_dst_relpath)
    *move_dst_relpath = ((void*)0);
  if (delete_relpath)
    *delete_relpath = ((void*)0);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_OP_DEPTH_MOVED_TO));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, relpath, op_depth));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (!have_row)
    {
      return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND,
                               svn_sqlite__reset(stmt),
                               _("Node '%s' is not shadowed"),
                               path_for_error_message(wcroot, local_relpath,
                                                      scratch_pool));
    }

  delete_op_depth = svn_sqlite__column_int(stmt, 0);
  dst_relpath = svn_sqlite__column_text(stmt, 1, scratch_pool);

  SVN_ERR(svn_sqlite__reset(stmt));

  while (!dst_relpath && have_row)
    {
      relpath = svn_relpath_dirname(relpath, scratch_pool);

      if (relpath_depth(relpath) < delete_op_depth)
        break;

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_DEPTH_NODE));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, relpath,
                                delete_op_depth));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));

      if (have_row)
        dst_relpath = svn_sqlite__column_text(stmt, 13, scratch_pool);

      SVN_ERR(svn_sqlite__reset(stmt));
    }

  if (dst_relpath)
    {
      if (move_src_relpath)
        *move_src_relpath = apr_pstrdup(result_pool, relpath);

      if (move_dst_relpath)
        *move_dst_relpath = apr_pstrdup(result_pool, dst_relpath);

      if (delete_relpath)
        *delete_relpath = svn_relpath_prefix(local_relpath, delete_op_depth,
                                             result_pool);
    }

  return SVN_NO_ERROR;
}
