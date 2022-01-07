
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_DELETE_LOCK ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_work_items (int ,int *,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__step_done (int *) ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
lock_remove_txn(svn_wc__db_wcroot_t *wcroot,
                const char *local_relpath,
                svn_skel_t *work_items,
                apr_pool_t *scratch_pool)
{
  const char *repos_relpath;
  apr_int64_t repos_id;
  svn_sqlite__stmt_t *stmt;

  SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), ((void*)0),
                                            &repos_relpath, &repos_id,
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            wcroot, local_relpath,
                                            scratch_pool, scratch_pool));

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_DELETE_LOCK));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", repos_id, repos_relpath));

  SVN_ERR(svn_sqlite__step_done(stmt));

  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));

  return SVN_NO_ERROR;
}
