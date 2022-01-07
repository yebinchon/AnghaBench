
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdb; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int STMT_DELETE_REVERT_LIST ;
 int STMT_SELECT_REVERT_LIST ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int kind_map ;
 int relpath_depth (char const*) ;
 int svn_node_unknown ;
 int * svn_skel__parse (void const*,int ,int *) ;
 int svn_sqlite__bindf (int *,char*,char const*) ;
 void* svn_sqlite__column_blob (int *,int,int *,int *) ;
 int svn_sqlite__column_boolean (int *,int ) ;
 int svn_sqlite__column_int (int *,int) ;
 int svn_sqlite__column_is_null (int *,int) ;
 int svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int*,int *) ;
 int svn_sqlite__step_done (int *) ;
 int svn_wc__conflict_read_markers (int const**,int *,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
revert_list_read(svn_boolean_t *reverted,
                 const apr_array_header_t **marker_paths,
                 svn_boolean_t *copied_here,
                 svn_node_kind_t *kind,
                 svn_wc__db_wcroot_t *wcroot,
                 const char *local_relpath,
                 svn_wc__db_t *db,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *reverted = FALSE;
  *marker_paths = ((void*)0);
  *copied_here = FALSE;
  *kind = svn_node_unknown;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_REVERT_LIST));
  SVN_ERR(svn_sqlite__bindf(stmt, "s", local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (have_row)
    {
      svn_boolean_t is_actual = svn_sqlite__column_boolean(stmt, 0);
      svn_boolean_t another_row = FALSE;

      if (is_actual)
        {
          apr_size_t conflict_len;
          const void *conflict_data;

          conflict_data = svn_sqlite__column_blob(stmt, 5, &conflict_len,
                                                  scratch_pool);
          if (conflict_data)
            {
              svn_skel_t *conflicts = svn_skel__parse(conflict_data,
                                                      conflict_len,
                                                      scratch_pool);

              SVN_ERR(svn_wc__conflict_read_markers(marker_paths,
                                                    db, wcroot->abspath,
                                                    conflicts,
                                                    result_pool,
                                                    scratch_pool));
            }

          if (!svn_sqlite__column_is_null(stmt, 1))
            *reverted = TRUE;

          SVN_ERR(svn_sqlite__step(&another_row, stmt));
        }

      if (!is_actual || another_row)
        {
          *reverted = TRUE;
          if (!svn_sqlite__column_is_null(stmt, 4))
            {
              int op_depth = svn_sqlite__column_int(stmt, 3);
              *copied_here = (op_depth == relpath_depth(local_relpath));
            }
          *kind = svn_sqlite__column_token(stmt, 2, kind_map);
        }

    }
  SVN_ERR(svn_sqlite__reset(stmt));

  if (have_row)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_REVERT_LIST));
      SVN_ERR(svn_sqlite__bindf(stmt, "s", local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }

  return SVN_NO_ERROR;
}
