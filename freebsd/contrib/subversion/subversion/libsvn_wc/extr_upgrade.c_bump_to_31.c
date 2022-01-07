
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_prop_inherited_item_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_array_header_t ;


 int STMT_UPDATE_IPROP ;
 int STMT_UPGRADE_31_SELECT_WCROOT_NODES ;
 int STMT_UPGRADE_TO_31 ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int ,int) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_sqlite__bind_iprops (int *,int,int *,int *) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_int64 (int *,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int * svn_sqlite__exec_statements (int *,int ) ;
 int * svn_sqlite__get_statement (int **,int *,int ) ;
 int * svn_sqlite__reset (int *) ;
 int * svn_sqlite__step (scalar_t__*,int *) ;
 int * svn_sqlite__step_done (int *) ;

__attribute__((used)) static svn_error_t *
bump_to_31(void *baton,
           svn_sqlite__db_t *sdb,
           apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt, *stmt_mark_switch_roots;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_array_header_t *empty_iprops = apr_array_make(
    scratch_pool, 0, sizeof(svn_prop_inherited_item_t *));
  svn_error_t *err;


  SVN_ERR(svn_sqlite__exec_statements(sdb, STMT_UPGRADE_TO_31));




  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                    STMT_UPGRADE_31_SELECT_WCROOT_NODES));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  err = svn_sqlite__get_statement(&stmt_mark_switch_roots, sdb,
                                  STMT_UPDATE_IPROP);
  if (err)
    return svn_error_compose_create(err, svn_sqlite__reset(stmt));

  while (have_row)
    {
      const char *switched_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));
      apr_int64_t wc_id = svn_sqlite__column_int64(stmt, 0);

      err = svn_sqlite__bindf(stmt_mark_switch_roots, "is", wc_id,
                              switched_relpath);
      if (!err)
        err = svn_sqlite__bind_iprops(stmt_mark_switch_roots, 3,
                                      empty_iprops, iterpool);
      if (!err)
        err = svn_sqlite__step_done(stmt_mark_switch_roots);
      if (!err)
        err = svn_sqlite__step(&have_row, stmt);

      if (err)
        return svn_error_compose_create(
                err,
                svn_error_compose_create(

                  svn_sqlite__reset(stmt),
                  svn_sqlite__reset(stmt_mark_switch_roots)));
    }

  err = svn_sqlite__reset(stmt_mark_switch_roots);
  if (err)
    return svn_error_compose_create(err, svn_sqlite__reset(stmt));
  SVN_ERR(svn_sqlite__reset(stmt));

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
