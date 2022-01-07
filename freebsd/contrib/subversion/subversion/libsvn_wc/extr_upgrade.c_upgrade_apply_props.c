
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
struct TYPE_3__ {scalar_t__ nelts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int STMT_INSERT_ACTUAL_PROPS ;
 int STMT_SELECT_NODE_INFO ;
 int STMT_UPDATE_ACTUAL_PROPS ;
 int STMT_UPDATE_NODE_PROPS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int SVN_WC__NO_REVERT_FILES ;
 int _ (char*) ;
 int presence_map ;
 int svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_trace (int ) ;
 int svn_prop_diffs (TYPE_1__**,int *,int *,int *) ;
 int svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bind_properties (int *,int,int *,int *) ;
 int svn_sqlite__bind_text (int *,int,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 int svn_sqlite__column_int (int *,int ) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_sqlite__step_done (int *) ;
 int svn_sqlite__update (int*,int *) ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;

__attribute__((used)) static svn_error_t *
upgrade_apply_props(svn_sqlite__db_t *sdb,
                    const char *dir_abspath,
                    const char *local_relpath,
                    apr_hash_t *base_props,
                    apr_hash_t *revert_props,
                    apr_hash_t *working_props,
                    int original_format,
                    apr_int64_t wc_id,
                    apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int top_op_depth = -1;
  int below_op_depth = -1;
  svn_wc__db_status_t top_presence;
  svn_wc__db_status_t below_presence;
  int affected_rows;
  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb, STMT_SELECT_NODE_INFO));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (have_row)
    {
      top_op_depth = svn_sqlite__column_int(stmt, 0);
      top_presence = svn_sqlite__column_token(stmt, 3, presence_map);
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      if (have_row)
        {
          below_presence = svn_sqlite__column_token(stmt, 3, presence_map);



          if (below_presence == svn_wc__db_status_not_present
              || below_presence == svn_wc__db_status_deleted)
            SVN_ERR(svn_sqlite__step(&have_row, stmt));

          if (have_row)
            {
              below_presence = svn_sqlite__column_token(stmt, 3, presence_map);
              below_op_depth = svn_sqlite__column_int(stmt, 0);
            }
        }
    }
  SVN_ERR(svn_sqlite__reset(stmt));



  if (original_format > SVN_WC__NO_REVERT_FILES
      && revert_props == ((void*)0)
      && top_op_depth != -1
      && top_presence == svn_wc__db_status_normal
      && below_op_depth != -1
      && below_presence != svn_wc__db_status_not_present)
    {


      return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                               _("The properties of '%s' are in an "
                                 "indeterminate state and cannot be "
                                 "upgraded. See issue #2530."),
                               svn_dirent_local_style(
                                 svn_dirent_join(dir_abspath, local_relpath,
                                                 scratch_pool), scratch_pool));
    }


  if (top_op_depth == -1
      || (below_op_depth == -1 && revert_props))
    return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                             _("Insufficient NODES rows for '%s'"),
                             svn_dirent_local_style(
                               svn_dirent_join(dir_abspath, local_relpath,
                                               scratch_pool), scratch_pool));







  if (revert_props || below_op_depth == -1)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                        STMT_UPDATE_NODE_PROPS));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd",
                                wc_id, local_relpath, top_op_depth));
      SVN_ERR(svn_sqlite__bind_properties(stmt, 4, base_props, scratch_pool));
      SVN_ERR(svn_sqlite__update(&affected_rows, stmt));

      SVN_ERR_ASSERT(affected_rows == 1);
    }

  if (below_op_depth != -1)
    {
      apr_hash_t *props = revert_props ? revert_props : base_props;

      SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                        STMT_UPDATE_NODE_PROPS));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd",
                                wc_id, local_relpath, below_op_depth));
      SVN_ERR(svn_sqlite__bind_properties(stmt, 4, props, scratch_pool));
      SVN_ERR(svn_sqlite__update(&affected_rows, stmt));

      SVN_ERR_ASSERT(affected_rows == 1);
    }


  if (working_props != ((void*)0)
      && base_props != ((void*)0))
    {
      apr_array_header_t *diffs;

      SVN_ERR(svn_prop_diffs(&diffs, working_props, base_props, scratch_pool));

      if (diffs->nelts == 0)
        working_props = ((void*)0);
    }

  if (working_props != ((void*)0))
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                  STMT_UPDATE_ACTUAL_PROPS));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wc_id, local_relpath));
      SVN_ERR(svn_sqlite__bind_properties(stmt, 3, working_props,
                                          scratch_pool));
      SVN_ERR(svn_sqlite__update(&affected_rows, stmt));

      if (affected_rows == 0)
        {


          SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                            STMT_INSERT_ACTUAL_PROPS));
          SVN_ERR(svn_sqlite__bindf(stmt, "is", wc_id, local_relpath));
          if (*local_relpath != '\0')
            SVN_ERR(svn_sqlite__bind_text(stmt, 3,
                                          svn_relpath_dirname(local_relpath,
                                                              scratch_pool)));
          SVN_ERR(svn_sqlite__bind_properties(stmt, 4, working_props,
                                              scratch_pool));
          return svn_error_trace(svn_sqlite__step_done(stmt));
        }
    }

  return SVN_NO_ERROR;
}
