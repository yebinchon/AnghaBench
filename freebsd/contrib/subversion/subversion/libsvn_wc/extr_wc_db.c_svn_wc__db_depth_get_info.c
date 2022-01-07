
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_13__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;


 scalar_t__ SQLITE_PROPERTIES_AVAILABLE (int *,int) ;
 int STMT_SELECT_DEPTH_NODE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int assert (int ) ;
 int convert_to_working_status (scalar_t__*,scalar_t__) ;
 int depth_map ;
 int kind_map ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 int repos_location_from_columns (int *,int *,char const**,int *,int ,int,int,int *) ;
 int svn_depth_unknown ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,int ) ;
 TYPE_2__* svn_error_createf (int ,TYPE_2__*,int ,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_symlink ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int) ;
 TYPE_2__* svn_sqlite__column_checksum (int const**,int *,int,int *) ;
 int svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__column_is_null (int *,int) ;
 int svn_sqlite__column_properties (int **,int *,int,int *,int *) ;
 int svn_sqlite__column_revnum (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__column_token_null (int *,int,int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;

svn_error_t *
svn_wc__db_depth_get_info(svn_wc__db_status_t *status,
                          svn_node_kind_t *kind,
                          svn_revnum_t *revision,
                          const char **repos_relpath,
                          apr_int64_t *repos_id,
                          svn_revnum_t *changed_rev,
                          apr_time_t *changed_date,
                          const char **changed_author,
                          svn_depth_t *depth,
                          const svn_checksum_t **checksum,
                          const char **target,
                          svn_boolean_t *had_props,
                          apr_hash_t **props,
                          svn_wc__db_wcroot_t *wcroot,
                          const char *local_relpath,
                          int op_depth,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_error_t *err = SVN_NO_ERROR;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_DEPTH_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd",
                            wcroot->wc_id, local_relpath, op_depth));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (have_row)
    {
      svn_wc__db_status_t node_status = svn_sqlite__column_token(stmt, 2,
                                                                 presence_map);
      svn_node_kind_t node_kind = svn_sqlite__column_token(stmt, 3, kind_map);

      if (kind)
        {
          *kind = node_kind;
        }
      if (status)
        {
          *status = node_status;

          if (op_depth > 0)
            SVN_ERR(convert_to_working_status(status, *status));
        }
      repos_location_from_columns(repos_id, revision, repos_relpath,
                                  stmt, 0, 4, 1, result_pool);

      if (changed_rev)
        {
          *changed_rev = svn_sqlite__column_revnum(stmt, 7);
        }
      if (changed_date)
        {
          *changed_date = svn_sqlite__column_int64(stmt, 8);
        }
      if (changed_author)
        {

          *changed_author = svn_sqlite__column_text(stmt, 9, result_pool);
        }
      if (depth)
        {
          if (node_kind != svn_node_dir)
            {
              *depth = svn_depth_unknown;
            }
          else
            {
              *depth = svn_sqlite__column_token_null(stmt, 10, depth_map,
                                                     svn_depth_unknown);
            }
        }
      if (checksum)
        {
          if (node_kind != svn_node_file)
            {
              *checksum = ((void*)0);
            }
          else
            {
              err = svn_sqlite__column_checksum(checksum, stmt, 5,
                                                result_pool);
              if (err != ((void*)0))
                err = svn_error_createf(
                        err->apr_err, err,
                        _("The node '%s' has a corrupt checksum value."),
                        path_for_error_message(wcroot, local_relpath,
                                               scratch_pool));
            }
        }
      if (target)
        {
          if (node_kind != svn_node_symlink)
            *target = ((void*)0);
          else
            *target = svn_sqlite__column_text(stmt, 11, result_pool);
        }
      if (had_props)
        {
          *had_props = SQLITE_PROPERTIES_AVAILABLE(stmt, 12);
        }
      if (props)
        {
          if (node_status == svn_wc__db_status_normal
              || node_status == svn_wc__db_status_incomplete)
            {
              SVN_ERR(svn_sqlite__column_properties(props, stmt, 12,
                                                    result_pool, scratch_pool));
              if (*props == ((void*)0))
                *props = apr_hash_make(result_pool);
            }
          else
            {
              assert(svn_sqlite__column_is_null(stmt, 12));
              *props = ((void*)0);
            }
        }
    }
  else
    {
      err = svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                              _("The node '%s' was not found."),
                              path_for_error_message(wcroot, local_relpath,
                                                     scratch_pool));
    }


  return svn_error_compose_create(err, svn_sqlite__reset(stmt));
}
