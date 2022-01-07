
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef void* svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int STMT_SELECT_ACTUAL_NODE ;
 int STMT_SELECT_NODE_INFO ;
 int SVN_ERR (int *) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * convert_to_working_status (scalar_t__*,scalar_t__) ;
 int kind_map ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_trace (int *) ;
 void* svn_node_none ;
 int * svn_skel__parse (void const*,int ,int *) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*) ;
 void* svn_sqlite__column_blob (int *,int,int *,int *) ;
 int svn_sqlite__column_int (int *,int ) ;
 int * svn_sqlite__column_properties (int **,int *,int,int *,int *) ;
 void* svn_sqlite__column_token (int *,int,int ) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int * svn_sqlite__reset (int *) ;
 int * svn_sqlite__step (scalar_t__*,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;

svn_error_t *
svn_wc__db_read_conflict_internal(svn_skel_t **conflict,
                                  svn_node_kind_t *kind,
                                  apr_hash_t **props,
                                  svn_wc__db_wcroot_t *wcroot,
                                  const char *local_relpath,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  if (kind)
    *kind = svn_node_none;
  if (props)
    *props = ((void*)0);


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (have_row)
    {
      apr_size_t cfl_len;
      const void *cfl_data;


      cfl_data = svn_sqlite__column_blob(stmt, 2, &cfl_len, result_pool);

      if (cfl_data)
        *conflict = svn_skel__parse(cfl_data, cfl_len, result_pool);
      else
        *conflict = ((void*)0);

      if (props)
        {
          svn_error_t *err;

          err = svn_error_trace(svn_sqlite__column_properties(props, stmt, 1,
                                                              result_pool,
                                                              scratch_pool));

          if (err)
            return svn_error_compose_create(err, svn_sqlite__reset(stmt));
        }
    }
  else
    *conflict = ((void*)0);

  SVN_ERR(svn_sqlite__reset(stmt));

  if (!have_row || kind || (props && !*props))
    {
      svn_error_t *err = ((void*)0);
      svn_boolean_t have_info = FALSE;

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_NODE_INFO));

      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id,
                                local_relpath));

      SVN_ERR(svn_sqlite__step(&have_info, stmt));

      if (have_info)
        {
          if (kind)
            {
              svn_wc__db_status_t status;
              int op_depth = svn_sqlite__column_int(stmt, 0);

              status = svn_sqlite__column_token(stmt, 3, presence_map);

              if (op_depth > 0)
                err = convert_to_working_status(&status, status);

              if (!err && (status == svn_wc__db_status_normal
                           || status == svn_wc__db_status_added
                           || status == svn_wc__db_status_deleted
                           || status == svn_wc__db_status_incomplete))
                {
                  *kind = svn_sqlite__column_token(stmt, 4, kind_map);
                }
            }


          if (!err && (props && !*props))
            {
              err = svn_sqlite__column_properties(props, stmt, 14,
                                                  result_pool, scratch_pool);
            }
        }

      SVN_ERR(svn_error_compose_create(err, svn_sqlite__reset(stmt)));

      if (!have_row && !have_info)
        {
          return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                   _("The node '%s' was not found."),
                                   path_for_error_message(wcroot,
                                                          local_relpath,
                                                          scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}
