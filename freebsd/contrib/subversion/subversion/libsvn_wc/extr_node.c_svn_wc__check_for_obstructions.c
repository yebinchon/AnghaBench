
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
struct TYPE_12__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_MALFUNCTION () ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 TYPE_2__* convert_db_kind_to_node_kind (scalar_t__*,scalar_t__,int,scalar_t__) ;
 int svn_depth_unknown ;
 char const* svn_dirent_dirname (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 TYPE_2__* svn_wc__db_is_wcroot (scalar_t__*,int ,char const*,int *) ;
 TYPE_2__* svn_wc__db_read_info (int*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;







 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_state_missing ;
 int svn_wc_notify_state_obstructed ;

svn_error_t *
svn_wc__check_for_obstructions(svn_wc_notify_state_t *obstruction_state,
                               svn_node_kind_t *kind,
                               svn_boolean_t *deleted,
                               svn_boolean_t *excluded,
                               svn_depth_t *parent_depth,
                               svn_wc_context_t *wc_ctx,
                               const char *local_abspath,
                               svn_boolean_t no_wcroot_check,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t db_kind;
  svn_node_kind_t disk_kind;
  svn_error_t *err;

  *obstruction_state = svn_wc_notify_state_inapplicable;
  if (kind)
    *kind = svn_node_none;
  if (deleted)
    *deleted = FALSE;
  if (excluded)
    *excluded = FALSE;
  if (parent_depth)
    *parent_depth = svn_depth_unknown;

  SVN_ERR(svn_io_check_path(local_abspath, &disk_kind, scratch_pool));

  err = svn_wc__db_read_info(&status, &db_kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             wc_ctx->db, local_abspath,
                             scratch_pool, scratch_pool);

  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      svn_error_clear(err);

      if (disk_kind != svn_node_none)
        {

          *obstruction_state = svn_wc_notify_state_obstructed;
          return SVN_NO_ERROR;
        }

      err = svn_wc__db_read_info(&status, &db_kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), parent_depth, ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0),
                                 wc_ctx->db, svn_dirent_dirname(local_abspath,
                                                                scratch_pool),
                                 scratch_pool, scratch_pool);

      if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          svn_error_clear(err);

          *obstruction_state = svn_wc_notify_state_obstructed;
          return SVN_NO_ERROR;
        }
      else
        SVN_ERR(err);

      if (db_kind != svn_node_dir
          || (status != 130
              && status != 134))
        {

          *obstruction_state = svn_wc_notify_state_obstructed;
        }

      return SVN_NO_ERROR;
    }
  else
    SVN_ERR(err);


  if (!no_wcroot_check
      && db_kind == svn_node_dir
      && status == 130)
    {
      svn_boolean_t is_root;
      SVN_ERR(svn_wc__db_is_wcroot(&is_root, wc_ctx->db, local_abspath,
                                   scratch_pool));

      if (is_root)
        {

          *obstruction_state = svn_wc_notify_state_obstructed;
          return SVN_NO_ERROR;
        }
    }

  if (kind)
    SVN_ERR(convert_db_kind_to_node_kind(kind, db_kind, status, FALSE));

  switch (status)
    {
      case 133:
        if (deleted)
          *deleted = TRUE;

      case 129:
        if (disk_kind != svn_node_none)
          *obstruction_state = svn_wc_notify_state_obstructed;
        break;

      case 132:
      case 128:
        if (excluded)
          *excluded = TRUE;

      case 131:
        *obstruction_state = svn_wc_notify_state_missing;
        break;

      case 134:
      case 130:
        if (disk_kind == svn_node_none)
          *obstruction_state = svn_wc_notify_state_missing;
        else
          {
            svn_node_kind_t expected_kind;

            SVN_ERR(convert_db_kind_to_node_kind(&expected_kind, db_kind,
                                                 status, FALSE));

            if (disk_kind != expected_kind)
              *obstruction_state = svn_wc_notify_state_obstructed;
          }
        break;
      default:
        SVN_ERR_MALFUNCTION();
    }

  return SVN_NO_ERROR;
}
