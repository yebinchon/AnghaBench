
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int STMT_DELETE_WORK_ITEM ;
 int STMT_SELECT_WORK_ITEM ;
 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int * svn_skel__parse (void const*,int ,int *) ;
 int svn_sqlite__bind_int64 (int *,int,int ) ;
 void* svn_sqlite__column_blob (int *,int,int *,int *) ;
 int svn_sqlite__column_int64 (int *,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int *,int *) ;
 int svn_sqlite__step_done (int *) ;

__attribute__((used)) static svn_error_t *
wq_fetch_next(apr_uint64_t *id,
              svn_skel_t **work_item,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_uint64_t completed_id,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  if (completed_id != 0)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_WORK_ITEM));
      SVN_ERR(svn_sqlite__bind_int64(stmt, 1, completed_id));

      SVN_ERR(svn_sqlite__step_done(stmt));
    }

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_WORK_ITEM));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (!have_row)
    {
      *id = 0;
      *work_item = ((void*)0);
    }
  else
    {
      apr_size_t len;
      const void *val;

      *id = svn_sqlite__column_int64(stmt, 0);

      val = svn_sqlite__column_blob(stmt, 1, &len, result_pool);

      *work_item = svn_skel__parse(val, len, result_pool);
    }

  return svn_error_trace(svn_sqlite__reset(stmt));
}
