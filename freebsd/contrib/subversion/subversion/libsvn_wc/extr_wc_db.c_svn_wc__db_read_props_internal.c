
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
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int STMT_SELECT_ACTUAL_PROPS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int db_read_pristine_props (int **,TYPE_1__*,char const*,scalar_t__,int *,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_is_null (int *,int ) ;
 int * svn_sqlite__column_properties (int **,int *,int ,int *,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

svn_error_t *
svn_wc__db_read_props_internal(apr_hash_t **props,
                               svn_wc__db_wcroot_t *wcroot,
                               const char *local_relpath,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_error_t *err = ((void*)0);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_PROPS));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (have_row && !svn_sqlite__column_is_null(stmt, 0))
    {
      err = svn_sqlite__column_properties(props, stmt, 0,
                                          result_pool, scratch_pool);
    }
  else
    have_row = FALSE;

  SVN_ERR(svn_error_compose_create(err, svn_sqlite__reset(stmt)));

  if (have_row)
    return SVN_NO_ERROR;


  SVN_ERR(db_read_pristine_props(props, wcroot, local_relpath, FALSE,
                                 result_pool, scratch_pool));
  if (*props == ((void*)0))
    {





      *props = apr_hash_make(result_pool);
    }

  return SVN_NO_ERROR;
}
