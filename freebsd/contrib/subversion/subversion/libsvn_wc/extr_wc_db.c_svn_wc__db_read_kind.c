
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef void* svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int STMT_SELECT_NODE_INFO ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int _ (char*) ;
 int convert_to_working_status (int*,int) ;
 int kind_map ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_trace (int ) ;
 void* svn_node_none ;
 void* svn_node_unknown ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_int (int *,int ) ;
 void* svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_status_base_deleted ;




 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_read_kind(svn_node_kind_t *kind,
                     svn_wc__db_t *db,
                     const char *local_abspath,
                     svn_boolean_t allow_missing,
                     svn_boolean_t show_deleted,
                     svn_boolean_t show_hidden,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt_info;
  svn_boolean_t have_info;
  svn_wc__db_status_t status;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_ERR(svn_sqlite__get_statement(&stmt_info, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  SVN_ERR(svn_sqlite__bindf(stmt_info, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_info, stmt_info));

  if (!have_info)
    {
      if (allow_missing)
        {
          *kind = svn_node_unknown;
          SVN_ERR(svn_sqlite__reset(stmt_info));
          return SVN_NO_ERROR;
        }
      else
        {
          SVN_ERR(svn_sqlite__reset(stmt_info));
          return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                   _("The node '%s' was not found."),
                                   path_for_error_message(wcroot,
                                                          local_relpath,
                                                          scratch_pool));
        }
    }

  status = svn_sqlite__column_token(stmt_info, 3, presence_map);

  if (show_deleted && status == svn_wc__db_status_base_deleted)
    {



      SVN_ERR(svn_sqlite__step(&have_info, stmt_info));

      if (!have_info)
        {

          *kind = svn_node_none;
          return svn_error_trace(svn_sqlite__reset(stmt_info));
        }
    }

  if (!(show_deleted && show_hidden))
    {
      int op_depth = svn_sqlite__column_int(stmt_info, 0);
      svn_boolean_t report_none = FALSE;

      if (op_depth > 0)
        SVN_ERR(convert_to_working_status(&status, status));

      switch (status)
        {
          case 129:
            if (! (show_hidden && show_deleted))
              report_none = TRUE;
            break;
          case 130:
          case 128:
            if (! show_hidden)
              report_none = TRUE;
            break;
          case 131:
            if (! show_deleted)
              report_none = TRUE;
            break;
          default:
            break;
        }

      if (report_none)
        {
          *kind = svn_node_none;
          return svn_error_trace(svn_sqlite__reset(stmt_info));
        }
    }

  *kind = svn_sqlite__column_token(stmt_info, 4, kind_map);

  return svn_error_trace(svn_sqlite__reset(stmt_info));
}
